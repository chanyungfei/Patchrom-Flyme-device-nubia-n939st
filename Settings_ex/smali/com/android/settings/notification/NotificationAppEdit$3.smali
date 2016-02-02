.class Lcom/android/settings_ex/notification/NotificationAppEdit$3;
.super Ljava/lang/Object;
.source "NotificationAppEdit.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/notification/NotificationAppEdit;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/notification/NotificationAppEdit;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/notification/NotificationAppEdit;)V
    .locals 0

    .prologue
    .line 762
    iput-object p1, p0, Lcom/android/settings_ex/notification/NotificationAppEdit$3;->this$0:Lcom/android/settings_ex/notification/NotificationAppEdit;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 765
    iget-object v0, p0, Lcom/android/settings_ex/notification/NotificationAppEdit$3;->this$0:Lcom/android/settings_ex/notification/NotificationAppEdit;

    # invokes: Lcom/android/settings_ex/notification/NotificationAppEdit;->refreshDisplayedItems()V
    invoke-static {v0}, Lcom/android/settings_ex/notification/NotificationAppEdit;->access$1800(Lcom/android/settings_ex/notification/NotificationAppEdit;)V

    .line 766
    return-void
.end method
