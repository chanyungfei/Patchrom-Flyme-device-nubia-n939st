.class Lcom/android/settings_ex/DataEnabler$2;
.super Ljava/util/TimerTask;
.source "DataEnabler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/DataEnabler;->refreshStatus()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/DataEnabler;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/DataEnabler;)V
    .locals 0

    .prologue
    .line 134
    iput-object p1, p0, Lcom/android/settings_ex/DataEnabler$2;->this$0:Lcom/android/settings_ex/DataEnabler;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 136
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 137
    .local v0, "msg":Landroid/os/Message;
    const/16 v1, 0x33

    iput v1, v0, Landroid/os/Message;->what:I

    .line 138
    # getter for: Lcom/android/settings_ex/DataEnabler;->mHandler:Lcom/android/settings_ex/DataEnabler$MyHandler;
    invoke-static {}, Lcom/android/settings_ex/DataEnabler;->access$300()Lcom/android/settings_ex/DataEnabler$MyHandler;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/settings_ex/DataEnabler$MyHandler;->sendMessage(Landroid/os/Message;)Z

    .line 139
    return-void
.end method
