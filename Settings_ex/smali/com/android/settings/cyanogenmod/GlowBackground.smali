.class public Lcom/android/settings_ex/cyanogenmod/GlowBackground;
.super Landroid/graphics/drawable/Drawable;
.source "GlowBackground.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field private mAnimator:Landroid/animation/Animator;

.field private mCircleSize:F

.field private final mPaint:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>(I)V
    .locals 1
    .param p1, "color"    # I

    .prologue
    .line 20
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 21
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/settings_ex/cyanogenmod/GlowBackground;->mPaint:Landroid/graphics/Paint;

    .line 22
    iget-object v0, p0, Lcom/android/settings_ex/cyanogenmod/GlowBackground;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 23
    return-void
.end method

.method private getAnimator(Z)Landroid/animation/Animator;
    .locals 6
    .param p1, "hide"    # Z

    .prologue
    .line 39
    iget v2, p0, Lcom/android/settings_ex/cyanogenmod/GlowBackground;->mCircleSize:F

    .line 40
    .local v2, "start":F
    const/high16 v1, 0x43160000    # 150.0f

    .line 41
    .local v1, "end":F
    if-eqz p1, :cond_0

    .line 42
    const/4 v1, 0x0

    .line 44
    :cond_0
    const/4 v3, 0x2

    new-array v3, v3, [F

    const/4 v4, 0x0

    aput v2, v3, v4

    const/4 v4, 0x1

    aput v1, v3, v4

    invoke-static {v3}, Landroid/animation/ObjectAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 45
    .local v0, "animator":Landroid/animation/ValueAnimator;
    new-instance v3, Landroid/view/animation/AnticipateOvershootInterpolator;

    invoke-direct {v3}, Landroid/view/animation/AnticipateOvershootInterpolator;-><init>()V

    invoke-virtual {v0, v3}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 46
    const-wide/16 v4, 0x12c

    invoke-virtual {v0, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 47
    invoke-virtual {v0, p0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 48
    return-object v0
.end method

.method private startAnimation(Z)V
    .locals 2
    .param p1, "hide"    # Z

    .prologue
    .line 26
    iget-object v0, p0, Lcom/android/settings_ex/cyanogenmod/GlowBackground;->mAnimator:Landroid/animation/Animator;

    if-eqz v0, :cond_0

    .line 27
    iget-object v0, p0, Lcom/android/settings_ex/cyanogenmod/GlowBackground;->mAnimator:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    .line 29
    :cond_0
    if-eqz p1, :cond_2

    iget v0, p0, Lcom/android/settings_ex/cyanogenmod/GlowBackground;->mCircleSize:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_2

    .line 36
    :cond_1
    :goto_0
    return-void

    .line 31
    :cond_2
    if-nez p1, :cond_3

    iget v0, p0, Lcom/android/settings_ex/cyanogenmod/GlowBackground;->mCircleSize:F

    const/high16 v1, 0x43160000    # 150.0f

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_1

    .line 34
    :cond_3
    invoke-direct {p0, p1}, Lcom/android/settings_ex/cyanogenmod/GlowBackground;->getAnimator(Z)Landroid/animation/Animator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/cyanogenmod/GlowBackground;->mAnimator:Landroid/animation/Animator;

    .line 35
    iget-object v0, p0, Lcom/android/settings_ex/cyanogenmod/GlowBackground;->mAnimator:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    goto :goto_0
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 4
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 53
    invoke-virtual {p0}, Lcom/android/settings_ex/cyanogenmod/GlowBackground;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    invoke-virtual {p0}, Lcom/android/settings_ex/cyanogenmod/GlowBackground;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    iget v2, p0, Lcom/android/settings_ex/cyanogenmod/GlowBackground;->mCircleSize:F

    iget-object v3, p0, Lcom/android/settings_ex/cyanogenmod/GlowBackground;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 54
    return-void
.end method

.method public getOpacity()I
    .locals 1

    .prologue
    .line 66
    const/4 v0, 0x0

    return v0
.end method

.method public hideGlow()V
    .locals 1

    .prologue
    .line 76
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/settings_ex/cyanogenmod/GlowBackground;->startAnimation(Z)V

    .line 77
    return-void
.end method

.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1
    .param p1, "valueAnimator"    # Landroid/animation/ValueAnimator;

    .prologue
    .line 71
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    iput v0, p0, Lcom/android/settings_ex/cyanogenmod/GlowBackground;->mCircleSize:F

    .line 72
    invoke-virtual {p0}, Lcom/android/settings_ex/cyanogenmod/GlowBackground;->invalidateSelf()V

    .line 73
    return-void
.end method

.method public setAlpha(I)V
    .locals 0
    .param p1, "i"    # I

    .prologue
    .line 58
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0
    .param p1, "colorFilter"    # Landroid/graphics/ColorFilter;

    .prologue
    .line 62
    return-void
.end method

.method public showGlow()V
    .locals 1

    .prologue
    .line 80
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/settings_ex/cyanogenmod/GlowBackground;->startAnimation(Z)V

    .line 81
    return-void
.end method
