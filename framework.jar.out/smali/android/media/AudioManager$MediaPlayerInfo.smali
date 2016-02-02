.class Landroid/media/AudioManager$MediaPlayerInfo;
.super Ljava/lang/Object;
.source "AudioManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/AudioManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MediaPlayerInfo"
.end annotation


# instance fields
.field private mIsfocussed:Z

.field private mPackageName:Ljava/lang/String;

.field final synthetic this$0:Landroid/media/AudioManager;


# direct methods
.method public constructor <init>(Landroid/media/AudioManager;Ljava/lang/String;Z)V
    .locals 0
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "isfocussed"    # Z

    .prologue
    .line 2716
    iput-object p1, p0, Landroid/media/AudioManager$MediaPlayerInfo;->this$0:Landroid/media/AudioManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2717
    iput-object p2, p0, Landroid/media/AudioManager$MediaPlayerInfo;->mPackageName:Ljava/lang/String;

    .line 2718
    iput-boolean p3, p0, Landroid/media/AudioManager$MediaPlayerInfo;->mIsfocussed:Z

    .line 2719
    return-void
.end method


# virtual methods
.method public getPackageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2727
    iget-object v0, p0, Landroid/media/AudioManager$MediaPlayerInfo;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public isFocussed()Z
    .locals 1

    .prologue
    .line 2721
    iget-boolean v0, p0, Landroid/media/AudioManager$MediaPlayerInfo;->mIsfocussed:Z

    return v0
.end method

.method public setFocus(Z)V
    .locals 0
    .param p1, "focus"    # Z

    .prologue
    .line 2724
    iput-boolean p1, p0, Landroid/media/AudioManager$MediaPlayerInfo;->mIsfocussed:Z

    .line 2725
    return-void
.end method
