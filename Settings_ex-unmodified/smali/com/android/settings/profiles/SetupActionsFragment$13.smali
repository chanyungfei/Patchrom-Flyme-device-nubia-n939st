.class Lcom/android/settings/profiles/SetupActionsFragment$13;
.super Ljava/lang/Object;
.source "SetupActionsFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/profiles/SetupActionsFragment;->requestVolumeDialog(ILandroid/app/StreamSettings;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/profiles/SetupActionsFragment;

.field final synthetic val$volumizer:Landroid/preference/SeekBarVolumizer;


# direct methods
.method constructor <init>(Lcom/android/settings/profiles/SetupActionsFragment;Landroid/preference/SeekBarVolumizer;)V
    .locals 0

    .prologue
    .line 704
    iput-object p1, p0, Lcom/android/settings/profiles/SetupActionsFragment$13;->this$0:Lcom/android/settings/profiles/SetupActionsFragment;

    iput-object p2, p0, Lcom/android/settings/profiles/SetupActionsFragment$13;->val$volumizer:Landroid/preference/SeekBarVolumizer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1
    .param p1, "dialogInterface"    # Landroid/content/DialogInterface;

    .prologue
    .line 707
    iget-object v0, p0, Lcom/android/settings/profiles/SetupActionsFragment$13;->val$volumizer:Landroid/preference/SeekBarVolumizer;

    if-eqz v0, :cond_0

    .line 708
    iget-object v0, p0, Lcom/android/settings/profiles/SetupActionsFragment$13;->val$volumizer:Landroid/preference/SeekBarVolumizer;

    invoke-virtual {v0}, Landroid/preference/SeekBarVolumizer;->stop()V

    .line 710
    :cond_0
    return-void
.end method
