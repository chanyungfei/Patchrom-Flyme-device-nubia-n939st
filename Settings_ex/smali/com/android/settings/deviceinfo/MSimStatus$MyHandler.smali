.class Lcom/android/settings_ex/deviceinfo/MSimStatus$MyHandler;
.super Landroid/os/Handler;
.source "MSimStatus.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/deviceinfo/MSimStatus;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MyHandler"
.end annotation


# instance fields
.field private mStatus:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/android/settings_ex/deviceinfo/MSimStatus;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/android/settings_ex/deviceinfo/MSimStatus;)V
    .locals 1
    .param p1, "activity"    # Lcom/android/settings_ex/deviceinfo/MSimStatus;

    .prologue
    .line 237
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 238
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/settings_ex/deviceinfo/MSimStatus$MyHandler;->mStatus:Ljava/lang/ref/WeakReference;

    .line 239
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 243
    iget-object v1, p0, Lcom/android/settings_ex/deviceinfo/MSimStatus$MyHandler;->mStatus:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings_ex/deviceinfo/MSimStatus;

    .line 244
    .local v0, "status":Lcom/android/settings_ex/deviceinfo/MSimStatus;
    if-nez v0, :cond_0

    .line 254
    :goto_0
    return-void

    .line 248
    :cond_0
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 250
    :pswitch_0
    invoke-virtual {v0}, Lcom/android/settings_ex/deviceinfo/MSimStatus;->updateTimes()V

    .line 251
    const/16 v1, 0x1f4

    const-wide/16 v2, 0x3e8

    invoke-virtual {p0, v1, v2, v3}, Lcom/android/settings_ex/deviceinfo/MSimStatus$MyHandler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 248
    :pswitch_data_0
    .packed-switch 0x1f4
        :pswitch_0
    .end packed-switch
.end method