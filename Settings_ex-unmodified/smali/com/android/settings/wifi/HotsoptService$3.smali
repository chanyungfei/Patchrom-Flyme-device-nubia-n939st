.class Lcom/android/settings/wifi/HotsoptService$3;
.super Ljava/util/TimerTask;
.source "HotsoptService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/wifi/HotsoptService;->onCreate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wifi/HotsoptService;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/HotsoptService;)V
    .locals 0

    .prologue
    .line 120
    iput-object p1, p0, Lcom/android/settings/wifi/HotsoptService$3;->this$0:Lcom/android/settings/wifi/HotsoptService;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 122
    iget-object v1, p0, Lcom/android/settings/wifi/HotsoptService$3;->this$0:Lcom/android/settings/wifi/HotsoptService;

    # getter for: Lcom/android/settings/wifi/HotsoptService;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/settings/wifi/HotsoptService;->access$400(Lcom/android/settings/wifi/HotsoptService;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 123
    .local v0, "message":Landroid/os/Message;
    const/4 v1, 0x0

    iput v1, v0, Landroid/os/Message;->what:I

    .line 124
    iget-object v1, p0, Lcom/android/settings/wifi/HotsoptService$3;->this$0:Lcom/android/settings/wifi/HotsoptService;

    # getter for: Lcom/android/settings/wifi/HotsoptService;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/settings/wifi/HotsoptService;->access$400(Lcom/android/settings/wifi/HotsoptService;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 125
    return-void
.end method
