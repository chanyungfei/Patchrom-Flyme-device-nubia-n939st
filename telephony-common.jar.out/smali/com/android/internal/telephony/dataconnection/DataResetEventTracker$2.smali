.class Lcom/android/internal/telephony/dataconnection/DataResetEventTracker$2;
.super Landroid/telephony/PhoneStateListener;
.source "DataResetEventTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/telephony/dataconnection/DataResetEventTracker;->startResetEventTracker()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/dataconnection/DataResetEventTracker;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/dataconnection/DataResetEventTracker;I)V
    .locals 0
    .param p2, "x0"    # I

    .prologue
    .line 128
    iput-object p1, p0, Lcom/android/internal/telephony/dataconnection/DataResetEventTracker$2;->this$0:Lcom/android/internal/telephony/dataconnection/DataResetEventTracker;

    invoke-direct {p0, p2}, Landroid/telephony/PhoneStateListener;-><init>(I)V

    return-void
.end method


# virtual methods
.method public onCellLocationChanged(Landroid/telephony/CellLocation;)V
    .locals 4
    .param p1, "location"    # Landroid/telephony/CellLocation;

    .prologue
    .line 130
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DataResetEventTracker$2;->this$0:Lcom/android/internal/telephony/dataconnection/DataResetEventTracker;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DataConnection onCellLocationChanged : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    # invokes: Lcom/android/internal/telephony/dataconnection/DataResetEventTracker;->log(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/android/internal/telephony/dataconnection/DataResetEventTracker;->access$100(Lcom/android/internal/telephony/dataconnection/DataResetEventTracker;Ljava/lang/String;)V

    .line 133
    instance-of v1, p1, Landroid/telephony/gsm/GsmCellLocation;

    if-eqz v1, :cond_2

    move-object v0, p1

    .line 134
    check-cast v0, Landroid/telephony/gsm/GsmCellLocation;

    .line 136
    .local v0, "currentLocation":Landroid/telephony/gsm/GsmCellLocation;
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DataResetEventTracker$2;->this$0:Lcom/android/internal/telephony/dataconnection/DataResetEventTracker;

    # getter for: Lcom/android/internal/telephony/dataconnection/DataResetEventTracker;->mPreviousLocation:Landroid/telephony/gsm/GsmCellLocation;
    invoke-static {v1}, Lcom/android/internal/telephony/dataconnection/DataResetEventTracker;->access$300(Lcom/android/internal/telephony/dataconnection/DataResetEventTracker;)Landroid/telephony/gsm/GsmCellLocation;

    move-result-object v1

    if-eqz v1, :cond_1

    if-eqz v0, :cond_1

    .line 138
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DataResetEventTracker$2;->this$0:Lcom/android/internal/telephony/dataconnection/DataResetEventTracker;

    # getter for: Lcom/android/internal/telephony/dataconnection/DataResetEventTracker;->mPreviousLocation:Landroid/telephony/gsm/GsmCellLocation;
    invoke-static {v1}, Lcom/android/internal/telephony/dataconnection/DataResetEventTracker;->access$300(Lcom/android/internal/telephony/dataconnection/DataResetEventTracker;)Landroid/telephony/gsm/GsmCellLocation;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/gsm/GsmCellLocation;->getCid()I

    move-result v1

    invoke-virtual {v0}, Landroid/telephony/gsm/GsmCellLocation;->getCid()I

    move-result v2

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DataResetEventTracker$2;->this$0:Lcom/android/internal/telephony/dataconnection/DataResetEventTracker;

    # getter for: Lcom/android/internal/telephony/dataconnection/DataResetEventTracker;->mPreviousLocation:Landroid/telephony/gsm/GsmCellLocation;
    invoke-static {v1}, Lcom/android/internal/telephony/dataconnection/DataResetEventTracker;->access$300(Lcom/android/internal/telephony/dataconnection/DataResetEventTracker;)Landroid/telephony/gsm/GsmCellLocation;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/gsm/GsmCellLocation;->getLac()I

    move-result v1

    invoke-virtual {v0}, Landroid/telephony/gsm/GsmCellLocation;->getLac()I

    move-result v2

    if-eq v1, v2, :cond_1

    .line 142
    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DataResetEventTracker$2;->this$0:Lcom/android/internal/telephony/dataconnection/DataResetEventTracker;

    const-string v2, "DataConnection location updated"

    # invokes: Lcom/android/internal/telephony/dataconnection/DataResetEventTracker;->log(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/android/internal/telephony/dataconnection/DataResetEventTracker;->access$100(Lcom/android/internal/telephony/dataconnection/DataResetEventTracker;Ljava/lang/String;)V

    .line 143
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DataResetEventTracker$2;->this$0:Lcom/android/internal/telephony/dataconnection/DataResetEventTracker;

    # invokes: Lcom/android/internal/telephony/dataconnection/DataResetEventTracker;->notifyResetEvent()V
    invoke-static {v1}, Lcom/android/internal/telephony/dataconnection/DataResetEventTracker;->access$200(Lcom/android/internal/telephony/dataconnection/DataResetEventTracker;)V

    .line 146
    :cond_1
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DataResetEventTracker$2;->this$0:Lcom/android/internal/telephony/dataconnection/DataResetEventTracker;

    # setter for: Lcom/android/internal/telephony/dataconnection/DataResetEventTracker;->mPreviousLocation:Landroid/telephony/gsm/GsmCellLocation;
    invoke-static {v1, v0}, Lcom/android/internal/telephony/dataconnection/DataResetEventTracker;->access$302(Lcom/android/internal/telephony/dataconnection/DataResetEventTracker;Landroid/telephony/gsm/GsmCellLocation;)Landroid/telephony/gsm/GsmCellLocation;

    .line 148
    .end local v0    # "currentLocation":Landroid/telephony/gsm/GsmCellLocation;
    :cond_2
    return-void
.end method
