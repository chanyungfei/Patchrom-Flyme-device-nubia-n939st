.class Lcom/android/settings/notification/NotificationCenter$1;
.super Ljava/lang/Object;
.source "NotificationCenter.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/notification/NotificationCenter;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/notification/NotificationCenter;


# direct methods
.method constructor <init>(Lcom/android/settings/notification/NotificationCenter;)V
    .locals 0

    .prologue
    .line 166
    iput-object p1, p0, Lcom/android/settings/notification/NotificationCenter$1;->this$0:Lcom/android/settings/notification/NotificationCenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 3
    .param p1, "buttonview"    # Landroid/widget/CompoundButton;
    .param p2, "checked"    # Z

    .prologue
    .line 171
    if-eqz p2, :cond_0

    .line 172
    const-string v0, "yaodong"

    const-string v1, "onCheckedChanged == true"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    iget-object v0, p0, Lcom/android/settings/notification/NotificationCenter$1;->this$0:Lcom/android/settings/notification/NotificationCenter;

    # getter for: Lcom/android/settings/notification/NotificationCenter;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/settings/notification/NotificationCenter;->access$100(Lcom/android/settings/notification/NotificationCenter;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "desktopsw"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 183
    :goto_0
    return-void

    .line 180
    :cond_0
    iget-object v0, p0, Lcom/android/settings/notification/NotificationCenter$1;->this$0:Lcom/android/settings/notification/NotificationCenter;

    # getter for: Lcom/android/settings/notification/NotificationCenter;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/settings/notification/NotificationCenter;->access$100(Lcom/android/settings/notification/NotificationCenter;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "desktopsw"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0
.end method
