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


# static fields
.field public static final DEV_ACTION_USB_DEVICE_ATTACHED:I = 0x7d5

.field public static final DEV_ACTION_USB_DEVICE_DEATTACHED:I = 0x7d6

.field public static final DEV_EXTRA_PERMISSION_GRANTED:I = 0x7d4

.field public static final DEV_STATE_CHANGE:I = 0x7d0

.field public static final DEV_STATE_CONNECTED:I = 0x7d3

.field public static final DEV_STATE_CONNECTING:I = 0x7d2

.field public static final DEV_STATE_DISCONNECTED:I = 0x7d1

.field public static final DEV_STATE_NOT_FOUND:I = -0x7d0

.field public static final END_OPERATION:I = 0xbb9

.field public static final EXTRACTING_FEATURE:I = 0x3ef

.field public static final FP_RES_ENROLL_OVERTIME:I = 0x449

.field public static final FP_RES_FINGER_DETECTED:I = 0x431

.field public static final FP_RES_FINGER_REMOVED:I = 0x432

.field public static final FP_RES_FINGER_WAIT_FPON:I = 0x433

.field public static final FP_RES_REDUNDANT:I = 0x446

.field public static final FP_RES_SOMETHING_ON_SENSOR:I = 0x445

.field public static final GETTED_BAD_IMAGE:I = 0x3f1

.field public static final GETTED_GOOD_IMAGE:I = 0x3f0

.field public static final GETTED_IMAGE_FAIL:I = 0x3fe

.field public static final GETTED_IMAGE_TOO_SHORT:I = 0x3f7

.field public static final START_OPERATION:I = 0xbb8

.field public static final STATUS_FEATURE_LOW:I = 0x6

.field public static final STATUS_IDENTIFY_OVERTIME:I = 0x1b

.field public static final STATUS_IMAGE_BAD:I = 0x5

.field public static final STATUS_SWIPE_TOO_SHORT:I = 0xe


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
