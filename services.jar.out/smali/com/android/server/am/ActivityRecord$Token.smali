.class Lcom/android/server/am/ActivityRecord$Token;
.super Landroid/view/IApplicationToken$Stub;
.source "ActivityRecord.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/ActivityRecord;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Token"
.end annotation


# instance fields
.field final weakActivity:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/android/server/am/ActivityRecord;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/android/server/am/ActivityRecord;)V
    .locals 1
    .param p1, "activity"    # Lcom/android/server/am/ActivityRecord;

    .prologue
    .line 334
    invoke-direct {p0}, Landroid/view/IApplicationToken$Stub;-><init>()V

    .line 335
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/server/am/ActivityRecord$Token;->weakActivity:Ljava/lang/ref/WeakReference;

    .line 336
    return-void
.end method


# virtual methods
.method public getKeyDispatchingTimeout()J
    .locals 4

    .prologue
    .line 365
    iget-object v1, p0, Lcom/android/server/am/ActivityRecord$Token;->weakActivity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ActivityRecord;

    .line 366
    .local v0, "activity":Lcom/android/server/am/ActivityRecord;
    if-eqz v0, :cond_0

    .line 367
    invoke-virtual {v0}, Lcom/android/server/am/ActivityRecord;->getKeyDispatchingTimeout()J

    move-result-wide v2

    .line 369
    :goto_0
    return-wide v2

    :cond_0
    const-wide/16 v2, 0x0

    goto :goto_0
.end method

.method public keyDispatchingTimedOut(Ljava/lang/String;)Z
    .locals 2
    .param p1, "reason"    # Ljava/lang/String;

    .prologue
    .line 360
    iget-object v1, p0, Lcom/android/server/am/ActivityRecord$Token;->weakActivity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ActivityRecord;

    .line 361
    .local v0, "activity":Lcom/android/server/am/ActivityRecord;
    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/android/server/am/ActivityRecord;->keyDispatchingTimedOut(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 374
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 375
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "Token{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 376
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 377
    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 378
    iget-object v1, p0, Lcom/android/server/am/ActivityRecord$Token;->weakActivity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 379
    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 380
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public windowsDrawn()V
    .locals 2

    .prologue
    .line 339
    iget-object v1, p0, Lcom/android/server/am/ActivityRecord$Token;->weakActivity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ActivityRecord;

    .line 340
    .local v0, "activity":Lcom/android/server/am/ActivityRecord;
    if-eqz v0, :cond_0

    .line 341
    invoke-virtual {v0}, Lcom/android/server/am/ActivityRecord;->windowsDrawn()V

    .line 343
    :cond_0
    return-void
.end method

.method public windowsGone()V
    .locals 2

    .prologue
    .line 353
    iget-object v1, p0, Lcom/android/server/am/ActivityRecord$Token;->weakActivity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ActivityRecord;

    .line 354
    .local v0, "activity":Lcom/android/server/am/ActivityRecord;
    if-eqz v0, :cond_0

    .line 355
    invoke-virtual {v0}, Lcom/android/server/am/ActivityRecord;->windowsGone()V

    .line 357
    :cond_0
    return-void
.end method

.method public windowsVisible()V
    .locals 2

    .prologue
    .line 346
    iget-object v1, p0, Lcom/android/server/am/ActivityRecord$Token;->weakActivity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ActivityRecord;

    .line 347
    .local v0, "activity":Lcom/android/server/am/ActivityRecord;
    if-eqz v0, :cond_0

    .line 348
    invoke-virtual {v0}, Lcom/android/server/am/ActivityRecord;->windowsVisible()V

    .line 350
    :cond_0
    return-void
.end method
