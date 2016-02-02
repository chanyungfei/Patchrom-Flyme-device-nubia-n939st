.class public interface abstract Legistec/fingerauth/api/FPAuthListeners$PluginDeviceListener;
.super Ljava/lang/Object;
.source "FPAuthListeners.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Legistec/fingerauth/api/FPAuthListeners;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "PluginDeviceListener"
.end annotation


# virtual methods
.method public abstract onDevicePlug()V
.end method

.method public abstract onDeviceUnPlug()V
.end method

.method public abstract onPermissionGranted()V
.end method
