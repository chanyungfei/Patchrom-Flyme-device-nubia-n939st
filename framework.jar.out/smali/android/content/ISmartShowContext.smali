.class public interface abstract Landroid/content/ISmartShowContext;
.super Ljava/lang/Object;
.source "ISmartShowContext.java"


# static fields
.field public static final AMS_COMPONENET:Ljava/lang/String; = "AMS"

.field public static final DMS_COMPONENET:Ljava/lang/String; = "DMS"

.field public static final POLICY_COMPONENET:Ljava/lang/String; = "POLICY"

.field public static final WMS_COMPONENET:Ljava/lang/String; = "WMS"


# virtual methods
.method public abstract allowIMEFullscreen()Z
.end method

.method public abstract doExtractSmartContent(Landroid/view/View;ILandroid/graphics/Rect;)V
.end method

.method public abstract extractDefaultSmartContent(Landroid/view/View;Landroid/graphics/Rect;)Landroid/content/ClipData;
.end method

.method public abstract getParameters(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract getService(Ljava/lang/String;)Landroid/os/IBinder;
.end method

.method public abstract getSmartShowFuncs(Ljava/lang/String;)Ljava/lang/Object;
.end method

.method public abstract getStackBounds()Landroid/graphics/Rect;
.end method

.method public abstract setParameters(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public abstract setSmartContent(ILandroid/content/ClipData;)V
.end method
