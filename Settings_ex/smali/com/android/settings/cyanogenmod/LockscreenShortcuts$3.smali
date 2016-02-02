.class Lcom/android/settings_ex/cyanogenmod/LockscreenShortcuts$3;
.super Ljava/lang/Object;
.source "LockscreenShortcuts.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/cyanogenmod/LockscreenShortcuts;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/cyanogenmod/LockscreenShortcuts;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/cyanogenmod/LockscreenShortcuts;)V
    .locals 0

    .prologue
    .line 188
    iput-object p1, p0, Lcom/android/settings_ex/cyanogenmod/LockscreenShortcuts$3;->this$0:Lcom/android/settings_ex/cyanogenmod/LockscreenShortcuts;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 191
    iget-object v0, p0, Lcom/android/settings_ex/cyanogenmod/LockscreenShortcuts$3;->this$0:Lcom/android/settings_ex/cyanogenmod/LockscreenShortcuts;

    const/4 v1, 0x0

    # invokes: Lcom/android/settings_ex/cyanogenmod/LockscreenShortcuts;->onTargetChange(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/settings_ex/cyanogenmod/LockscreenShortcuts;->access$200(Lcom/android/settings_ex/cyanogenmod/LockscreenShortcuts;Ljava/lang/String;)V

    .line 192
    return-void
.end method
