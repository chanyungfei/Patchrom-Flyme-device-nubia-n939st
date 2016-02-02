.class Lcom/android/settings/Lte4GEnabler$MyHandler;
.super Landroid/os/Handler;
.source "Lte4GEnabler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/Lte4GEnabler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/Lte4GEnabler;


# direct methods
.method private constructor <init>(Lcom/android/settings/Lte4GEnabler;)V
    .locals 0

    .prologue
    .line 242
    iput-object p1, p0, Lcom/android/settings/Lte4GEnabler$MyHandler;->this$0:Lcom/android/settings/Lte4GEnabler;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/Lte4GEnabler;Lcom/android/settings/Lte4GEnabler$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/settings/Lte4GEnabler;
    .param p2, "x1"    # Lcom/android/settings/Lte4GEnabler$1;

    .prologue
    .line 242
    invoke-direct {p0, p1}, Lcom/android/settings/Lte4GEnabler$MyHandler;-><init>(Lcom/android/settings/Lte4GEnabler;)V

    return-void
.end method

.method private handleSetPreferredNetworkTypeResponse(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 255
    iget-object v1, p0, Lcom/android/settings/Lte4GEnabler$MyHandler;->this$0:Lcom/android/settings/Lte4GEnabler;

    # invokes: Lcom/android/settings/Lte4GEnabler;->getPreferredNetworkType()I
    invoke-static {v1}, Lcom/android/settings/Lte4GEnabler;->access$500(Lcom/android/settings/Lte4GEnabler;)I

    move-result v0

    .line 257
    .local v0, "type":I
    iget-object v1, p0, Lcom/android/settings/Lte4GEnabler$MyHandler;->this$0:Lcom/android/settings/Lte4GEnabler;

    const/4 v2, 0x0

    # setter for: Lcom/android/settings/Lte4GEnabler;->mDialogClicked:Z
    invoke-static {v1, v2}, Lcom/android/settings/Lte4GEnabler;->access$202(Lcom/android/settings/Lte4GEnabler;Z)Z

    .line 258
    iget-object v1, p0, Lcom/android/settings/Lte4GEnabler$MyHandler;->this$0:Lcom/android/settings/Lte4GEnabler;

    # invokes: Lcom/android/settings/Lte4GEnabler;->setSwitchStatus()V
    invoke-static {v1}, Lcom/android/settings/Lte4GEnabler;->access$600(Lcom/android/settings/Lte4GEnabler;)V

    .line 259
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 247
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 252
    :goto_0
    return-void

    .line 249
    :pswitch_0
    invoke-direct {p0, p1}, Lcom/android/settings/Lte4GEnabler$MyHandler;->handleSetPreferredNetworkTypeResponse(Landroid/os/Message;)V

    goto :goto_0

    .line 247
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
