.class Lcom/android/settings/notification/NotificationCenter$6;
.super Ljava/lang/Object;
.source "NotificationCenter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/notification/NotificationCenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/notification/NotificationCenter;


# direct methods
.method constructor <init>(Lcom/android/settings/notification/NotificationCenter;)V
    .locals 0

    .prologue
    .line 754
    iput-object p1, p0, Lcom/android/settings/notification/NotificationCenter$6;->this$0:Lcom/android/settings/notification/NotificationCenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 757
    iget-object v0, p0, Lcom/android/settings/notification/NotificationCenter$6;->this$0:Lcom/android/settings/notification/NotificationCenter;

    # invokes: Lcom/android/settings/notification/NotificationCenter;->refreshDisplayedItems()V
    invoke-static {v0}, Lcom/android/settings/notification/NotificationCenter;->access$1700(Lcom/android/settings/notification/NotificationCenter;)V

    .line 758
    return-void
.end method
