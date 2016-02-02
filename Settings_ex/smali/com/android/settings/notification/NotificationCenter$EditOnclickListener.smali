.class final Lcom/android/settings_ex/notification/NotificationCenter$EditOnclickListener;
.super Ljava/lang/Object;
.source "NotificationCenter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/notification/NotificationCenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "EditOnclickListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/notification/NotificationCenter;


# direct methods
.method private constructor <init>(Lcom/android/settings_ex/notification/NotificationCenter;)V
    .locals 0

    .prologue
    .line 228
    iput-object p1, p0, Lcom/android/settings_ex/notification/NotificationCenter$EditOnclickListener;->this$0:Lcom/android/settings_ex/notification/NotificationCenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings_ex/notification/NotificationCenter;Lcom/android/settings_ex/notification/NotificationCenter$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/settings_ex/notification/NotificationCenter;
    .param p2, "x1"    # Lcom/android/settings_ex/notification/NotificationCenter$1;

    .prologue
    .line 228
    invoke-direct {p0, p1}, Lcom/android/settings_ex/notification/NotificationCenter$EditOnclickListener;-><init>(Lcom/android/settings_ex/notification/NotificationCenter;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 231
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 232
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/settings_ex/notification/NotificationCenter$EditOnclickListener;->this$0:Lcom/android/settings_ex/notification/NotificationCenter;

    # getter for: Lcom/android/settings_ex/notification/NotificationCenter;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/settings_ex/notification/NotificationCenter;->access$100(Lcom/android/settings_ex/notification/NotificationCenter;)Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/android/settings_ex/Settings$NotificationAppEditActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 234
    iget-object v1, p0, Lcom/android/settings_ex/notification/NotificationCenter$EditOnclickListener;->this$0:Lcom/android/settings_ex/notification/NotificationCenter;

    invoke-virtual {v1, v0}, Lcom/android/settings_ex/notification/NotificationCenter;->startActivity(Landroid/content/Intent;)V

    .line 235
    return-void
.end method
