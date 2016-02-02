.class public abstract Lcom/hipad/fingerprint/IFingerPrintUtils$Stub;
.super Landroid/os/Binder;
.source "IFingerPrintUtils.java"

# interfaces
.implements Lcom/hipad/fingerprint/IFingerPrintUtils;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hipad/fingerprint/IFingerPrintUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hipad/fingerprint/IFingerPrintUtils$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.hipad.fingerprint.IFingerPrintUtils"

.field static final TRANSACTION_addListener:I = 0x6

.field static final TRANSACTION_captureRawData:I = 0x8

.field static final TRANSACTION_close:I = 0x4

.field static final TRANSACTION_identify:I = 0x5

.field static final TRANSACTION_isLockFingerprintEnabled:I = 0x2

.field static final TRANSACTION_keyguardRelease:I = 0x9

.field static final TRANSACTION_open:I = 0x3

.field static final TRANSACTION_removeListener:I = 0x7

.field static final TRANSACTION_test:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 15
    const-string v0, "com.hipad.fingerprint.IFingerPrintUtils"

    invoke-virtual {p0, p0, v0}, Lcom/hipad/fingerprint/IFingerPrintUtils$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 16
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/hipad/fingerprint/IFingerPrintUtils;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    .line 23
    if-nez p0, :cond_0

    .line 24
    const/4 v0, 0x0

    .line 30
    :goto_0
    return-object v0

    .line 26
    :cond_0
    const-string v1, "com.hipad.fingerprint.IFingerPrintUtils"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 27
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/hipad/fingerprint/IFingerPrintUtils;

    if-eqz v1, :cond_1

    .line 28
    check-cast v0, Lcom/hipad/fingerprint/IFingerPrintUtils;

    goto :goto_0

    .line 30
    :cond_1
    new-instance v0, Lcom/hipad/fingerprint/IFingerPrintUtils$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lcom/hipad/fingerprint/IFingerPrintUtils$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 34
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 4
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    .line 38
    sparse-switch p1, :sswitch_data_0

    .line 114
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v3

    :goto_0
    return v3

    .line 42
    :sswitch_0
    const-string v2, "com.hipad.fingerprint.IFingerPrintUtils"

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 47
    :sswitch_1
    const-string v2, "com.hipad.fingerprint.IFingerPrintUtils"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 48
    invoke-virtual {p0}, Lcom/hipad/fingerprint/IFingerPrintUtils$Stub;->test()V

    .line 49
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 54
    :sswitch_2
    const-string v2, "com.hipad.fingerprint.IFingerPrintUtils"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 55
    invoke-virtual {p0}, Lcom/hipad/fingerprint/IFingerPrintUtils$Stub;->isLockFingerprintEnabled()Z

    move-result v1

    .line 56
    .local v1, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 57
    if-eqz v1, :cond_0

    move v2, v3

    :goto_1
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    goto :goto_1

    .line 62
    .end local v1    # "_result":Z
    :sswitch_3
    const-string v2, "com.hipad.fingerprint.IFingerPrintUtils"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 63
    invoke-virtual {p0}, Lcom/hipad/fingerprint/IFingerPrintUtils$Stub;->open()V

    .line 64
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 69
    :sswitch_4
    const-string v2, "com.hipad.fingerprint.IFingerPrintUtils"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 70
    invoke-virtual {p0}, Lcom/hipad/fingerprint/IFingerPrintUtils$Stub;->close()V

    .line 71
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 76
    :sswitch_5
    const-string v2, "com.hipad.fingerprint.IFingerPrintUtils"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 77
    invoke-virtual {p0}, Lcom/hipad/fingerprint/IFingerPrintUtils$Stub;->identify()V

    .line 78
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 83
    :sswitch_6
    const-string v2, "com.hipad.fingerprint.IFingerPrintUtils"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 85
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/hipad/fingerprint/FingerPrintListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/hipad/fingerprint/FingerPrintListener;

    move-result-object v0

    .line 86
    .local v0, "_arg0":Lcom/hipad/fingerprint/FingerPrintListener;
    invoke-virtual {p0, v0}, Lcom/hipad/fingerprint/IFingerPrintUtils$Stub;->addListener(Lcom/hipad/fingerprint/FingerPrintListener;)V

    .line 87
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 92
    .end local v0    # "_arg0":Lcom/hipad/fingerprint/FingerPrintListener;
    :sswitch_7
    const-string v2, "com.hipad.fingerprint.IFingerPrintUtils"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 94
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/hipad/fingerprint/FingerPrintListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/hipad/fingerprint/FingerPrintListener;

    move-result-object v0

    .line 95
    .restart local v0    # "_arg0":Lcom/hipad/fingerprint/FingerPrintListener;
    invoke-virtual {p0, v0}, Lcom/hipad/fingerprint/IFingerPrintUtils$Stub;->removeListener(Lcom/hipad/fingerprint/FingerPrintListener;)V

    .line 96
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 101
    .end local v0    # "_arg0":Lcom/hipad/fingerprint/FingerPrintListener;
    :sswitch_8
    const-string v2, "com.hipad.fingerprint.IFingerPrintUtils"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 102
    invoke-virtual {p0}, Lcom/hipad/fingerprint/IFingerPrintUtils$Stub;->captureRawData()V

    .line 103
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 108
    :sswitch_9
    const-string v2, "com.hipad.fingerprint.IFingerPrintUtils"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 109
    invoke-virtual {p0}, Lcom/hipad/fingerprint/IFingerPrintUtils$Stub;->keyguardRelease()V

    .line 110
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 38
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x6 -> :sswitch_6
        0x7 -> :sswitch_7
        0x8 -> :sswitch_8
        0x9 -> :sswitch_9
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
