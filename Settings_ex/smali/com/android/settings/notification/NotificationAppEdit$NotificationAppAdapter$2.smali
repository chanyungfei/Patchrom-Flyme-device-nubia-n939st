.class Lcom/android/settings_ex/notification/NotificationAppEdit$NotificationAppAdapter$2;
.super Ljava/lang/Object;
.source "NotificationAppEdit.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/notification/NotificationAppEdit$NotificationAppAdapter;->bindView(Landroid/view/View;Lcom/android/settings_ex/notification/NotificationAppEdit$Row;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/settings_ex/notification/NotificationAppEdit$NotificationAppAdapter;

.field final synthetic val$row:Lcom/android/settings_ex/notification/NotificationAppEdit$AppRow;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/notification/NotificationAppEdit$NotificationAppAdapter;Lcom/android/settings_ex/notification/NotificationAppEdit$AppRow;)V
    .locals 0

    .prologue
    .line 417
    iput-object p1, p0, Lcom/android/settings_ex/notification/NotificationAppEdit$NotificationAppAdapter$2;->this$1:Lcom/android/settings_ex/notification/NotificationAppEdit$NotificationAppAdapter;

    iput-object p2, p0, Lcom/android/settings_ex/notification/NotificationAppEdit$NotificationAppAdapter$2;->val$row:Lcom/android/settings_ex/notification/NotificationAppEdit$AppRow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 1
    .param p1, "arg0"    # Landroid/widget/CompoundButton;
    .param p2, "arg1"    # Z

    .prologue
    .line 422
    iget-object v0, p0, Lcom/android/settings_ex/notification/NotificationAppEdit$NotificationAppAdapter$2;->val$row:Lcom/android/settings_ex/notification/NotificationAppEdit$AppRow;

    iput-boolean p2, v0, Lcom/android/settings_ex/notification/NotificationAppEdit$AppRow;->islockscreenCk:Z

    .line 425
    return-void
.end method
