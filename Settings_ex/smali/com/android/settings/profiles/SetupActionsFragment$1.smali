.class Lcom/android/settings_ex/profiles/SetupActionsFragment$1;
.super Ljava/lang/Object;
.source "SetupActionsFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/profiles/SetupActionsFragment;->requestFillProfileFromSettingsDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/profiles/SetupActionsFragment;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/profiles/SetupActionsFragment;)V
    .locals 0

    .prologue
    .line 295
    iput-object p1, p0, Lcom/android/settings_ex/profiles/SetupActionsFragment$1;->this$0:Lcom/android/settings_ex/profiles/SetupActionsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 298
    iget-object v0, p0, Lcom/android/settings_ex/profiles/SetupActionsFragment$1;->this$0:Lcom/android/settings_ex/profiles/SetupActionsFragment;

    # invokes: Lcom/android/settings_ex/profiles/SetupActionsFragment;->fillProfileFromCurrentSettings()V
    invoke-static {v0}, Lcom/android/settings_ex/profiles/SetupActionsFragment;->access$000(Lcom/android/settings_ex/profiles/SetupActionsFragment;)V

    .line 299
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 300
    return-void
.end method
