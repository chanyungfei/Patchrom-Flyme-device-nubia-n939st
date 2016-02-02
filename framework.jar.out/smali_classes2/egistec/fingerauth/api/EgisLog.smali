.class public Legistec/fingerauth/api/EgisLog;
.super Ljava/lang/Object;
.source "EgisLog.java"


# static fields
.field private static LOG_CONTROLER:I

.field private static LOG_OFF:I

.field private static LOG_ON:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 6
    const/4 v0, 0x1

    sput v0, Legistec/fingerauth/api/EgisLog;->LOG_ON:I

    .line 7
    const/4 v0, 0x2

    sput v0, Legistec/fingerauth/api/EgisLog;->LOG_OFF:I

    .line 8
    sget v0, Legistec/fingerauth/api/EgisLog;->LOG_OFF:I

    sput v0, Legistec/fingerauth/api/EgisLog;->LOG_CONTROLER:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static debug(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 10
    sget v0, Legistec/fingerauth/api/EgisLog;->LOG_CONTROLER:I

    sget v1, Legistec/fingerauth/api/EgisLog;->LOG_OFF:I

    if-ne v0, v1, :cond_0

    .line 14
    :goto_0
    return-void

    .line 13
    :cond_0
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static error(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 24
    sget v0, Legistec/fingerauth/api/EgisLog;->LOG_CONTROLER:I

    sget v1, Legistec/fingerauth/api/EgisLog;->LOG_OFF:I

    if-ne v0, v1, :cond_0

    .line 28
    :goto_0
    return-void

    .line 27
    :cond_0
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static warning(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 17
    sget v0, Legistec/fingerauth/api/EgisLog;->LOG_CONTROLER:I

    sget v1, Legistec/fingerauth/api/EgisLog;->LOG_OFF:I

    if-ne v0, v1, :cond_0

    .line 21
    :goto_0
    return-void

    .line 20
    :cond_0
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
