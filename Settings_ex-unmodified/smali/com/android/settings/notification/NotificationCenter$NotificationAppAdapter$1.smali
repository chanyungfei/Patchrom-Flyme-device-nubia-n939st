.class Lcom/android/settings/notification/NotificationCenter$NotificationAppAdapter$1;
.super Ljava/lang/Object;
.source "NotificationCenter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/notification/NotificationCenter$NotificationAppAdapter;->bindView(Landroid/view/View;Lcom/android/settings/notification/NotificationCenter$Row;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/settings/notification/NotificationCenter$NotificationAppAdapter;

.field final synthetic val$row:Lcom/android/settings/notification/NotificationCenter$AppRow;


# direct methods
.method constructor <init>(Lcom/android/settings/notification/NotificationCenter$NotificationAppAdapter;Lcom/android/settings/notification/NotificationCenter$AppRow;)V
    .locals 0

    .prologue
    .line 428
    iput-object p1, p0, Lcom/android/settings/notification/NotificationCenter$NotificationAppAdapter$1;->this$1:Lcom/android/settings/notification/NotificationCenter$NotificationAppAdapter;

    iput-object p2, p0, Lcom/android/settings/notification/NotificationCenter$NotificationAppAdapter$1;->val$row:Lcom/android/settings/notification/NotificationCenter$AppRow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 437
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 439
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/settings/notification/NotificationCenter$NotificationAppAdapter$1;->this$1:Lcom/android/settings/notification/NotificationCenter$NotificationAppAdapter;

    iget-object v1, v1, Lcom/android/settings/notification/NotificationCenter$NotificationAppAdapter;->this$0:Lcom/android/settings/notification/NotificationCenter;

    # getter for: Lcom/android/settings/notification/NotificationCenter;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/settings/notification/NotificationCenter;->access$100(Lcom/android/settings/notification/NotificationCenter;)Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/android/settings/Settings$AppNotificationCenterSettingsActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 441
    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 442
    const-string v1, "app_package"

    iget-object v2, p0, Lcom/android/settings/notification/NotificationCenter$NotificationAppAdapter$1;->val$row:Lcom/android/settings/notification/NotificationCenter$AppRow;

    iget-object v2, v2, Lcom/android/settings/notification/NotificationCenter$AppRow;->pkg:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 443
    const-string v1, "app_uid"

    iget-object v2, p0, Lcom/android/settings/notification/NotificationCenter$NotificationAppAdapter$1;->val$row:Lcom/android/settings/notification/NotificationCenter$AppRow;

    iget v2, v2, Lcom/android/settings/notification/NotificationCenter$AppRow;->uid:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 444
    const-string v2, "has_settings_intent"

    iget-object v1, p0, Lcom/android/settings/notification/NotificationCenter$NotificationAppAdapter$1;->val$row:Lcom/android/settings/notification/NotificationCenter$AppRow;

    iget-object v1, v1, Lcom/android/settings/notification/NotificationCenter$AppRow;->settingsIntent:Landroid/content/Intent;

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 445
    const-string v1, "settings_intent"

    iget-object v2, p0, Lcom/android/settings/notification/NotificationCenter$NotificationAppAdapter$1;->val$row:Lcom/android/settings/notification/NotificationCenter$AppRow;

    iget-object v2, v2, Lcom/android/settings/notification/NotificationCenter$AppRow;->settingsIntent:Landroid/content/Intent;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 446
    iget-object v1, p0, Lcom/android/settings/notification/NotificationCenter$NotificationAppAdapter$1;->this$1:Lcom/android/settings/notification/NotificationCenter$NotificationAppAdapter;

    iget-object v1, v1, Lcom/android/settings/notification/NotificationCenter$NotificationAppAdapter;->this$0:Lcom/android/settings/notification/NotificationCenter;

    invoke-virtual {v1, v0}, Lcom/android/settings/notification/NotificationCenter;->startActivity(Landroid/content/Intent;)V

    .line 447
    return-void

    .line 444
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method
