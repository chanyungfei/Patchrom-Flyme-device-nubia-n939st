.class Lcom/android/settings/MySeekBar$1;
.super Ljava/lang/Object;
.source "MySeekBar.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/MySeekBar;->onBindView(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/MySeekBar;


# direct methods
.method constructor <init>(Lcom/android/settings/MySeekBar;)V
    .locals 0

    .prologue
    .line 86
    iput-object p1, p0, Lcom/android/settings/MySeekBar$1;->this$0:Lcom/android/settings/MySeekBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 2
    .param p1, "arg0"    # Landroid/widget/SeekBar;
    .param p2, "arg1"    # I
    .param p3, "arg2"    # Z

    .prologue
    .line 100
    iget-object v0, p0, Lcom/android/settings/MySeekBar$1;->this$0:Lcom/android/settings/MySeekBar;

    # getter for: Lcom/android/settings/MySeekBar;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/settings/MySeekBar;->access$000(Lcom/android/settings/MySeekBar;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "arg1"

    invoke-static {v0, v1, p2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 101
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0
    .param p1, "arg0"    # Landroid/widget/SeekBar;

    .prologue
    .line 96
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0
    .param p1, "arg0"    # Landroid/widget/SeekBar;

    .prologue
    .line 91
    return-void
.end method
