.class Lcom/android/settings_ex/notification/ZenModeSettings$13;
.super Ljava/lang/Object;
.source "ZenModeSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/notification/ZenModeSettings;->showConditionSelection(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/notification/ZenModeSettings;

.field final synthetic val$oldSettingsValue:I


# direct methods
.method constructor <init>(Lcom/android/settings_ex/notification/ZenModeSettings;I)V
    .locals 0

    .prologue
    .line 549
    iput-object p1, p0, Lcom/android/settings_ex/notification/ZenModeSettings$13;->this$0:Lcom/android/settings_ex/notification/ZenModeSettings;

    iput p2, p0, Lcom/android/settings_ex/notification/ZenModeSettings$13;->val$oldSettingsValue:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 552
    iget-object v0, p0, Lcom/android/settings_ex/notification/ZenModeSettings$13;->this$0:Lcom/android/settings_ex/notification/ZenModeSettings;

    iget v1, p0, Lcom/android/settings_ex/notification/ZenModeSettings$13;->val$oldSettingsValue:I

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/notification/ZenModeSettings;->cancelDialog(I)V

    .line 553
    return-void
.end method