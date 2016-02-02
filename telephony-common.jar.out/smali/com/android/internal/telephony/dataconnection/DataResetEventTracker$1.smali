.class Lcom/android/internal/telephony/dataconnection/DataResetEventTracker$1;
.super Landroid/os/Handler;
.source "DataResetEventTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/dataconnection/DataResetEventTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/dataconnection/DataResetEventTracker;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/dataconnection/DataResetEventTracker;)V
    .locals 0

    .prologue
    .line 79
    iput-object p1, p0, Lcom/android/internal/telephony/dataconnection/DataResetEventTracker$1;->this$0:Lcom/android/internal/telephony/dataconnection/DataResetEventTracker;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 82
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    .line 97
    :cond_0
    :goto_0
    return-void

    .line 84
    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 85
    .local v0, "ar":Landroid/os/AsyncResult;
    iget-object v1, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, Landroid/util/Pair;

    .line 86
    .local v1, "result":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    if-eqz v1, :cond_0

    .line 87
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DataResetEventTracker$1;->this$0:Lcom/android/internal/telephony/dataconnection/DataResetEventTracker;

    # getter for: Lcom/android/internal/telephony/dataconnection/DataResetEventTracker;->mPreviousRAT:I
    invoke-static {v2}, Lcom/android/internal/telephony/dataconnection/DataResetEventTracker;->access$000(Lcom/android/internal/telephony/dataconnection/DataResetEventTracker;)I

    move-result v2

    if-lez v2, :cond_1

    iget-object v2, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-lez v2, :cond_1

    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DataResetEventTracker$1;->this$0:Lcom/android/internal/telephony/dataconnection/DataResetEventTracker;

    # getter for: Lcom/android/internal/telephony/dataconnection/DataResetEventTracker;->mPreviousRAT:I
    invoke-static {v2}, Lcom/android/internal/telephony/dataconnection/DataResetEventTracker;->access$000(Lcom/android/internal/telephony/dataconnection/DataResetEventTracker;)I

    move-result v3

    iget-object v2, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-eq v3, v2, :cond_1

    .line 89
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DataResetEventTracker$1;->this$0:Lcom/android/internal/telephony/dataconnection/DataResetEventTracker;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "RAT CHANGED, "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/telephony/dataconnection/DataResetEventTracker$1;->this$0:Lcom/android/internal/telephony/dataconnection/DataResetEventTracker;

    # getter for: Lcom/android/internal/telephony/dataconnection/DataResetEventTracker;->mPreviousRAT:I
    invoke-static {v4}, Lcom/android/internal/telephony/dataconnection/DataResetEventTracker;->access$000(Lcom/android/internal/telephony/dataconnection/DataResetEventTracker;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "->"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    # invokes: Lcom/android/internal/telephony/dataconnection/DataResetEventTracker;->log(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/android/internal/telephony/dataconnection/DataResetEventTracker;->access$100(Lcom/android/internal/telephony/dataconnection/DataResetEventTracker;Ljava/lang/String;)V

    .line 91
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DataResetEventTracker$1;->this$0:Lcom/android/internal/telephony/dataconnection/DataResetEventTracker;

    # invokes: Lcom/android/internal/telephony/dataconnection/DataResetEventTracker;->notifyResetEvent()V
    invoke-static {v2}, Lcom/android/internal/telephony/dataconnection/DataResetEventTracker;->access$200(Lcom/android/internal/telephony/dataconnection/DataResetEventTracker;)V

    .line 93
    :cond_1
    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/DataResetEventTracker$1;->this$0:Lcom/android/internal/telephony/dataconnection/DataResetEventTracker;

    iget-object v2, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    # setter for: Lcom/android/internal/telephony/dataconnection/DataResetEventTracker;->mPreviousRAT:I
    invoke-static {v3, v2}, Lcom/android/internal/telephony/dataconnection/DataResetEventTracker;->access$002(Lcom/android/internal/telephony/dataconnection/DataResetEventTracker;I)I

    goto :goto_0

    .line 82
    nop

    :pswitch_data_0
    .packed-switch 0x42029
        :pswitch_0
    .end packed-switch
.end method
