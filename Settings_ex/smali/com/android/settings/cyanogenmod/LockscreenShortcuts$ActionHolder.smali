.class Lcom/android/settings_ex/cyanogenmod/LockscreenShortcuts$ActionHolder;
.super Ljava/lang/Object;
.source "LockscreenShortcuts.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/cyanogenmod/LockscreenShortcuts;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ActionHolder"
.end annotation


# instance fields
.field private mAvailableEntries:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation
.end field

.field private mAvailableValues:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# virtual methods
.method public getAction(I)Ljava/lang/String;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 81
    iget-object v0, p0, Lcom/android/settings_ex/cyanogenmod/LockscreenShortcuts$ActionHolder;->mAvailableValues:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le p1, v0, :cond_0

    .line 82
    const/4 v0, 0x0

    .line 85
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/settings_ex/cyanogenmod/LockscreenShortcuts$ActionHolder;->mAvailableValues:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_0
.end method

.method public getEntries()[Ljava/lang/CharSequence;
    .locals 2

    .prologue
    .line 89
    iget-object v0, p0, Lcom/android/settings_ex/cyanogenmod/LockscreenShortcuts$ActionHolder;->mAvailableEntries:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/settings_ex/cyanogenmod/LockscreenShortcuts$ActionHolder;->mAvailableEntries:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/CharSequence;

    return-object v0
.end method
