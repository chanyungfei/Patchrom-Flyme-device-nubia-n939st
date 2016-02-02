.class public Legistec/fingerauth/api/FPAuthListeners;
.super Ljava/lang/Object;
.source "FPAuthListeners.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Legistec/fingerauth/api/FPAuthListeners$EnrollListener;,
        Legistec/fingerauth/api/FPAuthListeners$EnrollMapProgressListener;,
        Legistec/fingerauth/api/FPAuthListeners$GetRawDataListener;,
        Legistec/fingerauth/api/FPAuthListeners$MatchedImageListener;,
        Legistec/fingerauth/api/FPAuthListeners$PluginDeviceListener;,
        Legistec/fingerauth/api/FPAuthListeners$StatusListener;,
        Legistec/fingerauth/api/FPAuthListeners$ThreadImageListener;,
        Legistec/fingerauth/api/FPAuthListeners$TinyEnrollListener;,
        Legistec/fingerauth/api/FPAuthListeners$VerifyLearningListener;,
        Legistec/fingerauth/api/FPAuthListeners$VerifyListener;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
