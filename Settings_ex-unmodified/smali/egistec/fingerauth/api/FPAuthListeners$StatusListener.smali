.class public interface abstract Legistec/fingerauth/api/FPAuthListeners$StatusListener;
.super Ljava/lang/Object;
.source "FPAuthListeners.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Legistec/fingerauth/api/FPAuthListeners;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "StatusListener"
.end annotation


# virtual methods
.method public abstract onBadImage(I)V
.end method

.method public abstract onFingerFetch()V
.end method

.method public abstract onFingerImageGetted()V
.end method

.method public abstract onServiceConnected()V
.end method

.method public abstract onServiceDisConnected()V
.end method

.method public abstract onStatus(I)V
.end method

.method public abstract onUserAbort()V
.end method
