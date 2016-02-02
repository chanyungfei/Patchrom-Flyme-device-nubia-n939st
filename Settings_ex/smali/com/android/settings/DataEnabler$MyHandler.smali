.class Lcom/android/settings_ex/DataEnabler$MyHandler;
.super Landroid/os/Handler;
.source "DataEnabler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/DataEnabler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/DataEnabler;


# direct methods
.method private constructor <init>(Lcom/android/settings_ex/DataEnabler;)V
    .locals 0

    .prologue
    .line 144
    iput-object p1, p0, Lcom/android/settings_ex/DataEnabler$MyHandler;->this$0:Lcom/android/settings_ex/DataEnabler;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings_ex/DataEnabler;Lcom/android/settings_ex/DataEnabler$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/settings_ex/DataEnabler;
    .param p2, "x1"    # Lcom/android/settings_ex/DataEnabler$1;

    .prologue
    .line 144
    invoke-direct {p0, p1}, Lcom/android/settings_ex/DataEnabler$MyHandler;-><init>(Lcom/android/settings_ex/DataEnabler;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 149
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 154
    :goto_0
    return-void

    .line 151
    :pswitch_0
    iget-object v0, p0, Lcom/android/settings_ex/DataEnabler$MyHandler;->this$0:Lcom/android/settings_ex/DataEnabler;

    # invokes: Lcom/android/settings_ex/DataEnabler;->setSwitchStatus()V
    invoke-static {v0}, Lcom/android/settings_ex/DataEnabler;->access$400(Lcom/android/settings_ex/DataEnabler;)V

    goto :goto_0

    .line 149
    :pswitch_data_0
    .packed-switch 0x33
        :pswitch_0
    .end packed-switch
.end method
