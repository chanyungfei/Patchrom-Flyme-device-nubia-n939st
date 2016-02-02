.class Lcom/android/settings_ex/notification/NotificationCenter$2;
.super Ljava/lang/Object;
.source "NotificationCenter.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/notification/NotificationCenter;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/notification/NotificationCenter;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/notification/NotificationCenter;)V
    .locals 0

    .prologue
    .line 185
    iput-object p1, p0, Lcom/android/settings_ex/notification/NotificationCenter$2;->this$0:Lcom/android/settings_ex/notification/NotificationCenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 3
    .param p1, "buttonview"    # Landroid/widget/CompoundButton;
    .param p2, "checked"    # Z

    .prologue
    .line 191
    if-eqz p2, :cond_0

    .line 192
    iget-object v0, p0, Lcom/android/settings_ex/notification/NotificationCenter$2;->this$0:Lcom/android/settings_ex/notification/NotificationCenter;

    # getter for: Lcom/android/settings_ex/notification/NotificationCenter;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/settings_ex/notification/NotificationCenter;->access$100(Lcom/android/settings_ex/notification/NotificationCenter;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "lockscreensw"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 199
    :goto_0
    return-void

    .line 195
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ex/notification/NotificationCenter$2;->this$0:Lcom/android/settings_ex/notification/NotificationCenter;

    # getter for: Lcom/android/settings_ex/notification/NotificationCenter;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/settings_ex/notification/NotificationCenter;->access$100(Lcom/android/settings_ex/notification/NotificationCenter;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "lockscreensw"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0
.end method
