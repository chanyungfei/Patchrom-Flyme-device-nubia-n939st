.class Lcom/android/settings_ex/notification/NotificationCenter$6;
.super Ljava/lang/Object;
.source "NotificationCenter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/notification/NotificationCenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/notification/NotificationCenter;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/notification/NotificationCenter;)V
    .locals 0

    .prologue
    .line 754
    iput-object p1, p0, Lcom/android/settings_ex/notification/NotificationCenter$6;->this$0:Lcom/android/settings_ex/notification/NotificationCenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 757
    iget-object v0, p0, Lcom/android/settings_ex/notification/NotificationCenter$6;->this$0:Lcom/android/settings_ex/notification/NotificationCenter;

    # invokes: Lcom/android/settings_ex/notification/NotificationCenter;->refreshDisplayedItems()V
    invoke-static {v0}, Lcom/android/settings_ex/notification/NotificationCenter;->access$1700(Lcom/android/settings_ex/notification/NotificationCenter;)V

    .line 758
    return-void
.end method
