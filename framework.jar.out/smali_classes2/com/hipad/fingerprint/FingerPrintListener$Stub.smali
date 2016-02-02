.class public abstract Lcom/hipad/fingerprint/FingerPrintListener$Stub;
.super Landroid/os/Binder;
.source "FingerPrintListener.java"

# interfaces
.implements Lcom/hipad/fingerprint/FingerPrintListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hipad/fingerprint/FingerPrintListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hipad/fingerprint/FingerPrintListener$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.hipad.fingerprint.FingerPrintListener"

.field static final TRANSACTION_onBadImage:I = 0x1

.field static final TRANSACTION_onCameraAttemptToUse:I = 0xb

.field static final TRANSACTION_onCameraRelease:I = 0xc

.field static final TRANSACTION_onFail:I = 0x9

.field static final TRANSACTION_onFingerFetch:I = 0x4

.field static final TRANSACTION_onFingerImageGetted:I = 0x5

.field static final TRANSACTION_onServiceConnected:I = 0x2

.field static final TRANSACTION_onServiceDisConnected:I = 0x3

.field static final TRANSACTION_onStatus:I = 0x7

.field static final TRANSACTION_onSuccess:I = 0x8

.field static final TRANSACTION_onTimeout:I = 0xa

.field static final TRANSACTION_onUserAbort:I = 0x6


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 18
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 19
    const-string v0, "com.hipad.fingerprint.FingerPrintListener"

    invoke-virtual {p0, p0, v0}, Lcom/hipad/fingerprint/FingerPrintListener$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 20
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/hipad/fingerprint/FingerPrintListener;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    .line 27
    if-nez p0, :cond_0

    .line 28
    const/4 v0, 0x0

    .line 34
    :goto_0
    return-object v0

    .line 30
    :cond_0
    const-string v1, "com.hipad.fingerprint.FingerPrintListener"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 31
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/hipad/fingerprint/FingerPrintListener;

    if-eqz v1, :cond_1

    .line 32
    check-cast v0, Lcom/hipad/fingerprint/FingerPrintListener;

    goto :goto_0

    .line 34
    :cond_1
    new-instance v0, Lcom/hipad/fingerprint/FingerPrintListener$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lcom/hipad/fingerprint/FingerPrintListener$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 38
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 3
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
    const/4 v1, 0x1

    .line 42
    sparse-switch p1, :sswitch_data_0

    .line 138
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    :goto_0
    return v1

    .line 46
    :sswitch_0
    const-string v2, "com.hipad.fingerprint.FingerPrintListener"

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 51
    :sswitch_1
    const-string v2, "com.hipad.fingerprint.FingerPrintListener"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 53
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 54
    .local v0, "_arg0":I
    invoke-virtual {p0, v0}, Lcom/hipad/fingerprint/FingerPrintListener$Stub;->onBadImage(I)V

    .line 55
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 60
    .end local v0    # "_arg0":I
    :sswitch_2
    const-string v2, "com.hipad.fingerprint.FingerPrintListener"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 61
    invoke-virtual {p0}, Lcom/hipad/fingerprint/FingerPrintListener$Stub;->onServiceConnected()V

    .line 62
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 67
    :sswitch_3
    const-string v2, "com.hipad.fingerprint.FingerPrintListener"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 68
    invoke-virtual {p0}, Lcom/hipad/fingerprint/FingerPrintListener$Stub;->onServiceDisConnected()V

    .line 69
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 74
    :sswitch_4
    const-string v2, "com.hipad.fingerprint.FingerPrintListener"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 75
    invoke-virtual {p0}, Lcom/hipad/fingerprint/FingerPrintListener$Stub;->onFingerFetch()V

    .line 76
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 81
    :sswitch_5
    const-string v2, "com.hipad.fingerprint.FingerPrintListener"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 82
    invoke-virtual {p0}, Lcom/hipad/fingerprint/FingerPrintListener$Stub;->onFingerImageGetted()V

    .line 83
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 88
    :sswitch_6
    const-string v2, "com.hipad.fingerprint.FingerPrintListener"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 89
    invoke-virtual {p0}, Lcom/hipad/fingerprint/FingerPrintListener$Stub;->onUserAbort()V

    .line 90
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 95
    :sswitch_7
    const-string v2, "com.hipad.fingerprint.FingerPrintListener"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 97
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 98
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Lcom/hipad/fingerprint/FingerPrintListener$Stub;->onStatus(I)V

    .line 99
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 104
    .end local v0    # "_arg0":I
    :sswitch_8
    const-string v2, "com.hipad.fingerprint.FingerPrintListener"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 105
    invoke-virtual {p0}, Lcom/hipad/fingerprint/FingerPrintListener$Stub;->onSuccess()V

    .line 106
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 111
    :sswitch_9
    const-string v2, "com.hipad.fingerprint.FingerPrintListener"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 112
    invoke-virtual {p0}, Lcom/hipad/fingerprint/FingerPrintListener$Stub;->onFail()V

    .line 113
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 118
    :sswitch_a
    const-string v2, "com.hipad.fingerprint.FingerPrintListener"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 119
    invoke-virtual {p0}, Lcom/hipad/fingerprint/FingerPrintListener$Stub;->onTimeout()V

    .line 120
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 125
    :sswitch_b
    const-string v2, "com.hipad.fingerprint.FingerPrintListener"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 126
    invoke-virtual {p0}, Lcom/hipad/fingerprint/FingerPrintListener$Stub;->onCameraAttemptToUse()V

    .line 127
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 132
    :sswitch_c
    const-string v2, "com.hipad.fingerprint.FingerPrintListener"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 133
    invoke-virtual {p0}, Lcom/hipad/fingerprint/FingerPrintListener$Stub;->onCameraRelease()V

    .line 134
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 42
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
        0xa -> :sswitch_a
        0xb -> :sswitch_b
        0xc -> :sswitch_c
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
