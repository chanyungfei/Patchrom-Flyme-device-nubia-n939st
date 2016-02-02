.class public interface abstract Lcom/android/cabl/ICABLService;
.super Ljava/lang/Object;
.source "ICABLService.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/cabl/ICABLService$Stub;
    }
.end annotation


# virtual methods
.method public abstract control(I)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract setVisualQualityLevel(Ljava/lang/String;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
