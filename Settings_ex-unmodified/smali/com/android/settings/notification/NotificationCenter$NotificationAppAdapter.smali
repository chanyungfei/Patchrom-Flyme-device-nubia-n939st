.class Lcom/android/settings/notification/NotificationCenter$NotificationAppAdapter;
.super Landroid/widget/ArrayAdapter;
.source "NotificationCenter.java"

# interfaces
.implements Landroid/widget/SectionIndexer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/notification/NotificationCenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NotificationAppAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lcom/android/settings/notification/NotificationCenter$Row;",
        ">;",
        "Landroid/widget/SectionIndexer;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/notification/NotificationCenter;


# direct methods
.method public constructor <init>(Lcom/android/settings/notification/NotificationCenter;Landroid/content/Context;)V
    .locals 1
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 345
    iput-object p1, p0, Lcom/android/settings/notification/NotificationCenter$NotificationAppAdapter;->this$0:Lcom/android/settings/notification/NotificationCenter;

    .line 346
    invoke-direct {p0, p2, v0, v0}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;II)V

    .line 347
    return-void
.end method

.method private enableLayoutTransitions(Landroid/view/ViewGroup;Z)V
    .locals 3
    .param p1, "vg"    # Landroid/view/ViewGroup;
    .param p2, "enabled"    # Z

    .prologue
    const/4 v2, 0x3

    const/4 v1, 0x2

    .line 403
    if-eqz p2, :cond_0

    .line 404
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getLayoutTransition()Landroid/animation/LayoutTransition;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/animation/LayoutTransition;->enableTransitionType(I)V

    .line 405
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getLayoutTransition()Landroid/animation/LayoutTransition;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/animation/LayoutTransition;->enableTransitionType(I)V

    .line 410
    :goto_0
    return-void

    .line 407
    :cond_0
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getLayoutTransition()Landroid/animation/LayoutTransition;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/animation/LayoutTransition;->disableTransitionType(I)V

    .line 408
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getLayoutTransition()Landroid/animation/LayoutTransition;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/animation/LayoutTransition;->disableTransitionType(I)V

    goto :goto_0
.end method

.method private getSubtitle(Lcom/android/settings/notification/NotificationCenter$AppRow;)Ljava/lang/String;
    .locals 5
    .param p1, "row"    # Lcom/android/settings/notification/NotificationCenter$AppRow;

    .prologue
    .line 460
    iget-boolean v2, p1, Lcom/android/settings/notification/NotificationCenter$AppRow;->banned:Z

    if-eqz v2, :cond_1

    .line 461
    iget-object v2, p0, Lcom/android/settings/notification/NotificationCenter$NotificationAppAdapter;->this$0:Lcom/android/settings/notification/NotificationCenter;

    # getter for: Lcom/android/settings/notification/NotificationCenter;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/settings/notification/NotificationCenter;->access$100(Lcom/android/settings/notification/NotificationCenter;)Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f090ace

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 471
    :cond_0
    :goto_0
    return-object v0

    .line 463
    :cond_1
    iget-boolean v2, p1, Lcom/android/settings/notification/NotificationCenter$AppRow;->priority:Z

    if-nez v2, :cond_2

    iget-boolean v2, p1, Lcom/android/settings/notification/NotificationCenter$AppRow;->sensitive:Z

    if-nez v2, :cond_2

    .line 464
    const-string v0, ""

    goto :goto_0

    .line 466
    :cond_2
    iget-object v2, p0, Lcom/android/settings/notification/NotificationCenter$NotificationAppAdapter;->this$0:Lcom/android/settings/notification/NotificationCenter;

    # getter for: Lcom/android/settings/notification/NotificationCenter;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/settings/notification/NotificationCenter;->access$100(Lcom/android/settings/notification/NotificationCenter;)Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f090acf

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 467
    .local v0, "priString":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/settings/notification/NotificationCenter$NotificationAppAdapter;->this$0:Lcom/android/settings/notification/NotificationCenter;

    # getter for: Lcom/android/settings/notification/NotificationCenter;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/settings/notification/NotificationCenter;->access$100(Lcom/android/settings/notification/NotificationCenter;)Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f090ad0

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 468
    .local v1, "senString":Ljava/lang/String;
    iget-boolean v2, p1, Lcom/android/settings/notification/NotificationCenter$AppRow;->priority:Z

    iget-boolean v3, p1, Lcom/android/settings/notification/NotificationCenter$AppRow;->sensitive:Z

    if-eq v2, v3, :cond_3

    .line 469
    iget-boolean v2, p1, Lcom/android/settings/notification/NotificationCenter$AppRow;->priority:Z

    if-nez v2, :cond_0

    move-object v0, v1

    goto :goto_0

    .line 471
    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/notification/NotificationCenter$NotificationAppAdapter;->this$0:Lcom/android/settings/notification/NotificationCenter;

    # getter for: Lcom/android/settings/notification/NotificationCenter;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/settings/notification/NotificationCenter;->access$100(Lcom/android/settings/notification/NotificationCenter;)Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f090adc

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public bindView(Landroid/view/View;Lcom/android/settings/notification/NotificationCenter$Row;Z)V
    .locals 9
    .param p1, "view"    # Landroid/view/View;
    .param p2, "r"    # Lcom/android/settings/notification/NotificationCenter$Row;
    .param p3, "animate"    # Z

    .prologue
    const/4 v4, 0x0

    const/16 v5, 0x8

    .line 413
    instance-of v6, p2, Lcom/android/settings/notification/NotificationCenter$AppRow;

    if-nez v6, :cond_0

    .line 415
    const v4, 0x1020016

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 416
    .local v2, "tv":Landroid/widget/TextView;
    iget-object v4, p2, Lcom/android/settings/notification/NotificationCenter$Row;->section:Ljava/lang/String;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 457
    .end local v2    # "tv":Landroid/widget/TextView;
    :goto_0
    return-void

    :cond_0
    move-object v0, p2

    .line 420
    check-cast v0, Lcom/android/settings/notification/NotificationCenter$AppRow;

    .line 421
    .local v0, "row":Lcom/android/settings/notification/NotificationCenter$AppRow;
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/settings/notification/NotificationCenter$ViewHolder;

    .line 422
    .local v3, "vh":Lcom/android/settings/notification/NotificationCenter$ViewHolder;
    iget-object v6, v3, Lcom/android/settings/notification/NotificationCenter$ViewHolder;->row:Landroid/view/ViewGroup;

    invoke-direct {p0, v6, p3}, Lcom/android/settings/notification/NotificationCenter$NotificationAppAdapter;->enableLayoutTransitions(Landroid/view/ViewGroup;Z)V

    .line 423
    const/4 v6, 0x1

    iget-object v7, p0, Lcom/android/settings/notification/NotificationCenter$NotificationAppAdapter;->this$0:Lcom/android/settings/notification/NotificationCenter;

    # getter for: Lcom/android/settings/notification/NotificationCenter;->mContext:Landroid/content/Context;
    invoke-static {v7}, Lcom/android/settings/notification/NotificationCenter;->access$100(Lcom/android/settings/notification/NotificationCenter;)Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "Notifysw"

    invoke-static {v7, v8, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    if-ne v6, v7, :cond_1

    .line 424
    iget-object v4, v3, Lcom/android/settings/notification/NotificationCenter$ViewHolder;->rowDivider:Landroid/view/View;

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    .line 428
    :goto_1
    iget-object v4, v3, Lcom/android/settings/notification/NotificationCenter$ViewHolder;->row:Landroid/view/ViewGroup;

    new-instance v6, Lcom/android/settings/notification/NotificationCenter$NotificationAppAdapter$1;

    invoke-direct {v6, p0, v0}, Lcom/android/settings/notification/NotificationCenter$NotificationAppAdapter$1;-><init>(Lcom/android/settings/notification/NotificationCenter$NotificationAppAdapter;Lcom/android/settings/notification/NotificationCenter$AppRow;)V

    invoke-virtual {v4, v6}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 449
    iget-object v4, v3, Lcom/android/settings/notification/NotificationCenter$ViewHolder;->row:Landroid/view/ViewGroup;

    invoke-direct {p0, v4, p3}, Lcom/android/settings/notification/NotificationCenter$NotificationAppAdapter;->enableLayoutTransitions(Landroid/view/ViewGroup;Z)V

    .line 450
    iget-object v4, v3, Lcom/android/settings/notification/NotificationCenter$ViewHolder;->icon:Landroid/widget/ImageView;

    iget-object v6, v0, Lcom/android/settings/notification/NotificationCenter$AppRow;->icon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4, v6}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 451
    iget-object v4, v3, Lcom/android/settings/notification/NotificationCenter$ViewHolder;->title:Landroid/widget/TextView;

    iget-object v6, v0, Lcom/android/settings/notification/NotificationCenter$AppRow;->label:Ljava/lang/CharSequence;

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 452
    invoke-direct {p0, v0}, Lcom/android/settings/notification/NotificationCenter$NotificationAppAdapter;->getSubtitle(Lcom/android/settings/notification/NotificationCenter$AppRow;)Ljava/lang/String;

    move-result-object v1

    .line 456
    .local v1, "sub":Ljava/lang/String;
    iget-object v4, v3, Lcom/android/settings/notification/NotificationCenter$ViewHolder;->subtitle:Landroid/widget/TextView;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 426
    .end local v1    # "sub":Ljava/lang/String;
    :cond_1
    iget-object v6, v3, Lcom/android/settings/notification/NotificationCenter$ViewHolder;->rowDivider:Landroid/view/View;

    iget-boolean v7, v0, Lcom/android/settings/notification/NotificationCenter$AppRow;->first:Z

    if-eqz v7, :cond_2

    move v4, v5

    :cond_2
    invoke-virtual {v6, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 356
    int-to-long v0, p1

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 366
    invoke-virtual {p0, p1}, Lcom/android/settings/notification/NotificationCenter$NotificationAppAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/notification/NotificationCenter$Row;

    .line 367
    .local v0, "r":Lcom/android/settings/notification/NotificationCenter$Row;
    instance-of v1, v0, Lcom/android/settings/notification/NotificationCenter$AppRow;

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getPositionForSection(I)I
    .locals 5
    .param p1, "sectionIndex"    # I

    .prologue
    .line 481
    iget-object v4, p0, Lcom/android/settings/notification/NotificationCenter$NotificationAppAdapter;->this$0:Lcom/android/settings/notification/NotificationCenter;

    # getter for: Lcom/android/settings/notification/NotificationCenter;->mSections:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/android/settings/notification/NotificationCenter;->access$600(Lcom/android/settings/notification/NotificationCenter;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 482
    .local v3, "section":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/settings/notification/NotificationCenter$NotificationAppAdapter;->getCount()I

    move-result v1

    .line 483
    .local v1, "n":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 484
    invoke-virtual {p0, v0}, Lcom/android/settings/notification/NotificationCenter$NotificationAppAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settings/notification/NotificationCenter$Row;

    .line 485
    .local v2, "r":Lcom/android/settings/notification/NotificationCenter$Row;
    iget-object v4, v2, Lcom/android/settings/notification/NotificationCenter$Row;->section:Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 489
    .end local v0    # "i":I
    .end local v2    # "r":Lcom/android/settings/notification/NotificationCenter$Row;
    :goto_1
    return v0

    .line 483
    .restart local v0    # "i":I
    .restart local v2    # "r":Lcom/android/settings/notification/NotificationCenter$Row;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 489
    .end local v2    # "r":Lcom/android/settings/notification/NotificationCenter$Row;
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public getSectionForPosition(I)I
    .locals 3
    .param p1, "position"    # I

    .prologue
    .line 494
    invoke-virtual {p0, p1}, Lcom/android/settings/notification/NotificationCenter$NotificationAppAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/notification/NotificationCenter$Row;

    .line 495
    .local v0, "row":Lcom/android/settings/notification/NotificationCenter$Row;
    iget-object v1, p0, Lcom/android/settings/notification/NotificationCenter$NotificationAppAdapter;->this$0:Lcom/android/settings/notification/NotificationCenter;

    # getter for: Lcom/android/settings/notification/NotificationCenter;->mSections:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/android/settings/notification/NotificationCenter;->access$600(Lcom/android/settings/notification/NotificationCenter;)Ljava/util/ArrayList;

    move-result-object v1

    iget-object v2, v0, Lcom/android/settings/notification/NotificationCenter$Row;->section:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    return v1
.end method

.method public getSections()[Ljava/lang/Object;
    .locals 2

    .prologue
    .line 476
    iget-object v0, p0, Lcom/android/settings/notification/NotificationCenter$NotificationAppAdapter;->this$0:Lcom/android/settings/notification/NotificationCenter;

    # getter for: Lcom/android/settings/notification/NotificationCenter;->mSections:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/android/settings/notification/NotificationCenter;->access$600(Lcom/android/settings/notification/NotificationCenter;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/notification/NotificationCenter$NotificationAppAdapter;->this$0:Lcom/android/settings/notification/NotificationCenter;

    # getter for: Lcom/android/settings/notification/NotificationCenter;->mSections:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/android/settings/notification/NotificationCenter;->access$600(Lcom/android/settings/notification/NotificationCenter;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 371
    invoke-virtual {p0, p1}, Lcom/android/settings/notification/NotificationCenter$NotificationAppAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/notification/NotificationCenter$Row;

    .line 373
    .local v0, "r":Lcom/android/settings/notification/NotificationCenter$Row;
    if-nez p2, :cond_0

    .line 374
    invoke-virtual {p0, p3, v0}, Lcom/android/settings/notification/NotificationCenter$NotificationAppAdapter;->newView(Landroid/view/ViewGroup;Lcom/android/settings/notification/NotificationCenter$Row;)Landroid/view/View;

    move-result-object v1

    .line 378
    .local v1, "v":Landroid/view/View;
    :goto_0
    const/4 v2, 0x0

    invoke-virtual {p0, v1, v0, v2}, Lcom/android/settings/notification/NotificationCenter$NotificationAppAdapter;->bindView(Landroid/view/View;Lcom/android/settings/notification/NotificationCenter$Row;Z)V

    .line 379
    return-object v1

    .line 376
    .end local v1    # "v":Landroid/view/View;
    :cond_0
    move-object v1, p2

    .restart local v1    # "v":Landroid/view/View;
    goto :goto_0
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 361
    const/4 v0, 0x2

    return v0
.end method

.method public hasStableIds()Z
    .locals 1

    .prologue
    .line 351
    const/4 v0, 0x1

    return v0
.end method

.method public newView(Landroid/view/ViewGroup;Lcom/android/settings/notification/NotificationCenter$Row;)Landroid/view/View;
    .locals 5
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "r"    # Lcom/android/settings/notification/NotificationCenter$Row;

    .prologue
    const/4 v4, 0x0

    .line 383
    instance-of v2, p2, Lcom/android/settings/notification/NotificationCenter$AppRow;

    if-nez v2, :cond_0

    .line 384
    iget-object v2, p0, Lcom/android/settings/notification/NotificationCenter$NotificationAppAdapter;->this$0:Lcom/android/settings/notification/NotificationCenter;

    # getter for: Lcom/android/settings/notification/NotificationCenter;->mInflater:Landroid/view/LayoutInflater;
    invoke-static {v2}, Lcom/android/settings/notification/NotificationCenter;->access$400(Lcom/android/settings/notification/NotificationCenter;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f04011c

    invoke-virtual {v2, v3, p1, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 399
    :goto_0
    return-object v0

    .line 386
    :cond_0
    iget-object v2, p0, Lcom/android/settings/notification/NotificationCenter$NotificationAppAdapter;->this$0:Lcom/android/settings/notification/NotificationCenter;

    # getter for: Lcom/android/settings/notification/NotificationCenter;->mInflater:Landroid/view/LayoutInflater;
    invoke-static {v2}, Lcom/android/settings/notification/NotificationCenter;->access$400(Lcom/android/settings/notification/NotificationCenter;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f04008e

    invoke-virtual {v2, v3, p1, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 387
    .local v0, "v":Landroid/view/View;
    new-instance v1, Lcom/android/settings/notification/NotificationCenter$ViewHolder;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/android/settings/notification/NotificationCenter$ViewHolder;-><init>(Lcom/android/settings/notification/NotificationCenter$1;)V

    .local v1, "vh":Lcom/android/settings/notification/NotificationCenter$ViewHolder;
    move-object v2, v0

    .line 388
    check-cast v2, Landroid/view/ViewGroup;

    iput-object v2, v1, Lcom/android/settings/notification/NotificationCenter$ViewHolder;->row:Landroid/view/ViewGroup;

    .line 389
    iget-object v2, v1, Lcom/android/settings/notification/NotificationCenter$ViewHolder;->row:Landroid/view/ViewGroup;

    new-instance v3, Landroid/animation/LayoutTransition;

    invoke-direct {v3}, Landroid/animation/LayoutTransition;-><init>()V

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->setLayoutTransition(Landroid/animation/LayoutTransition;)V

    .line 390
    iget-object v2, v1, Lcom/android/settings/notification/NotificationCenter$ViewHolder;->row:Landroid/view/ViewGroup;

    new-instance v3, Landroid/animation/LayoutTransition;

    invoke-direct {v3}, Landroid/animation/LayoutTransition;-><init>()V

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->setLayoutTransition(Landroid/animation/LayoutTransition;)V

    .line 391
    const v2, 0x1020006

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, v1, Lcom/android/settings/notification/NotificationCenter$ViewHolder;->icon:Landroid/widget/ImageView;

    .line 392
    const v2, 0x1020016

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v1, Lcom/android/settings/notification/NotificationCenter$ViewHolder;->title:Landroid/widget/TextView;

    .line 393
    const v2, 0x1020014

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v1, Lcom/android/settings/notification/NotificationCenter$ViewHolder;->subtitle:Landroid/widget/TextView;

    .line 394
    const v2, 0x7f0f0012

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, v1, Lcom/android/settings/notification/NotificationCenter$ViewHolder;->rowDivider:Landroid/view/View;

    .line 395
    const v2, 0x7f0f0146

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v1, Lcom/android/settings/notification/NotificationCenter$ViewHolder;->breatheLightText:Landroid/widget/TextView;

    .line 396
    const v2, 0x7f0f0147

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v1, Lcom/android/settings/notification/NotificationCenter$ViewHolder;->lockScreenText:Landroid/widget/TextView;

    .line 397
    const v2, 0x7f0f0069

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, v1, Lcom/android/settings/notification/NotificationCenter$ViewHolder;->moreView:Landroid/widget/ImageView;

    .line 398
    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_0
.end method
