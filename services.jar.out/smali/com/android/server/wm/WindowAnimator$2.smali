.class Lcom/android/server/wm/WindowAnimator$2;
.super Landroid/database/ContentObserver;
.source "WindowAnimator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/WindowAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wm/WindowAnimator;


# direct methods
.method constructor <init>(Lcom/android/server/wm/WindowAnimator;Landroid/os/Handler;)V
    .locals 0
    .param p2, "x0"    # Landroid/os/Handler;

    .prologue
    .line 146
    iput-object p1, p0, Lcom/android/server/wm/WindowAnimator$2;->this$0:Lcom/android/server/wm/WindowAnimator;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 5
    .param p1, "selfChange"    # Z

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 149
    iget-object v2, p0, Lcom/android/server/wm/WindowAnimator$2;->this$0:Lcom/android/server/wm/WindowAnimator;

    iget-object v3, p0, Lcom/android/server/wm/WindowAnimator$2;->this$0:Lcom/android/server/wm/WindowAnimator;

    iget-object v3, v3, Lcom/android/server/wm/WindowAnimator;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "blur_lockscreen"

    invoke-static {v3, v4, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v0, v3, :cond_0

    :goto_0
    # setter for: Lcom/android/server/wm/WindowAnimator;->mKeyguardBlurEnabled:Z
    invoke-static {v2, v0}, Lcom/android/server/wm/WindowAnimator;->access$102(Lcom/android/server/wm/WindowAnimator;Z)Z

    .line 151
    iget-object v0, p0, Lcom/android/server/wm/WindowAnimator$2;->this$0:Lcom/android/server/wm/WindowAnimator;

    # getter for: Lcom/android/server/wm/WindowAnimator;->mKeyguardBlurEnabled:Z
    invoke-static {v0}, Lcom/android/server/wm/WindowAnimator;->access$100(Lcom/android/server/wm/WindowAnimator;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 152
    const-wide/16 v0, 0x0

    # setter for: Lcom/android/server/wm/WindowAnimator;->KEYGUARD_ANIM_TIMEOUT_MS:J
    invoke-static {v0, v1}, Lcom/android/server/wm/WindowAnimator;->access$202(J)J

    .line 156
    :goto_1
    return-void

    :cond_0
    move v0, v1

    .line 149
    goto :goto_0

    .line 154
    :cond_1
    const-wide/16 v0, 0x3e8

    # setter for: Lcom/android/server/wm/WindowAnimator;->KEYGUARD_ANIM_TIMEOUT_MS:J
    invoke-static {v0, v1}, Lcom/android/server/wm/WindowAnimator;->access$202(J)J

    goto :goto_1
.end method
