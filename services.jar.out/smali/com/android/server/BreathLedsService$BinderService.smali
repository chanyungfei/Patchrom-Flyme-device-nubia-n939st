.class final Lcom/android/server/BreathLedsService$BinderService;
.super Landroid/os/IBreathLedsService$Stub;
.source "BreathLedsService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/BreathLedsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "BinderService"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/BreathLedsService;


# direct methods
.method private constructor <init>(Lcom/android/server/BreathLedsService;)V
    .locals 0

    .prologue
    .line 64
    iput-object p1, p0, Lcom/android/server/BreathLedsService$BinderService;->this$0:Lcom/android/server/BreathLedsService;

    invoke-direct {p0}, Landroid/os/IBreathLedsService$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/BreathLedsService;Lcom/android/server/BreathLedsService$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/server/BreathLedsService;
    .param p2, "x1"    # Lcom/android/server/BreathLedsService$1;

    .prologue
    .line 64
    invoke-direct {p0, p1}, Lcom/android/server/BreathLedsService$BinderService;-><init>(Lcom/android/server/BreathLedsService;)V

    return-void
.end method


# virtual methods
.method public getLedsBrightness(I)I
    .locals 2
    .param p1, "which"    # I

    .prologue
    .line 81
    const/4 v0, 0x6

    if-gt p1, v0, :cond_0

    const/4 v0, 0x1

    if-ge p1, v0, :cond_1

    .line 82
    :cond_0
    const/4 v0, -0x1

    .line 84
    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lcom/android/server/BreathLedsService$BinderService;->this$0:Lcom/android/server/BreathLedsService;

    # getter for: Lcom/android/server/BreathLedsService;->brightness:[I
    invoke-static {v0}, Lcom/android/server/BreathLedsService;->access$100(Lcom/android/server/BreathLedsService;)[I

    move-result-object v0

    add-int/lit8 v1, p1, -0x1

    aget v0, v0, v1

    goto :goto_0
.end method

.method public initLedsBrightness(I)V
    .locals 1
    .param p1, "level"    # I

    .prologue
    .line 115
    iget-object v0, p0, Lcom/android/server/BreathLedsService$BinderService;->this$0:Lcom/android/server/BreathLedsService;

    iput p1, v0, Lcom/android/server/BreathLedsService;->defaultBrihtness:I

    .line 116
    return-void
.end method

.method public setLedsBrightness(II)V
    .locals 4
    .param p1, "which"    # I
    .param p2, "level"    # I

    .prologue
    .line 68
    const/4 v1, 0x6

    if-gt p1, v1, :cond_0

    const/4 v1, 0x1

    if-ge p1, v1, :cond_1

    .line 77
    :cond_0
    :goto_0
    return-void

    .line 70
    :cond_1
    const-string v1, "chenxia"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setLedsBrightness:defaultBrihtness = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    iget-object v1, p0, Lcom/android/server/BreathLedsService$BinderService;->this$0:Lcom/android/server/BreathLedsService;

    # getter for: Lcom/android/server/BreathLedsService;->brightness:[I
    invoke-static {v1}, Lcom/android/server/BreathLedsService;->access$100(Lcom/android/server/BreathLedsService;)[I

    move-result-object v1

    add-int/lit8 v2, p1, -0x1

    aput p2, v1, v2

    .line 74
    div-int/lit8 v1, p2, 0x8

    rem-int/lit8 p2, v1, 0x20

    .line 75
    or-int/lit16 v1, p1, 0x80

    shl-int/lit8 v1, v1, 0x8

    # getter for: Lcom/android/server/BreathLedsService;->BRIGHTNESS_LEVEL:[I
    invoke-static {}, Lcom/android/server/BreathLedsService;->access$200()[I

    move-result-object v2

    aget v2, v2, p2

    or-int v0, v1, v2

    .line 76
    .local v0, "data":I
    iget-object v1, p0, Lcom/android/server/BreathLedsService$BinderService;->this$0:Lcom/android/server/BreathLedsService;

    # invokes: Lcom/android/server/BreathLedsService;->set_brightness_native(I)V
    invoke-static {v1, v0}, Lcom/android/server/BreathLedsService;->access$300(Lcom/android/server/BreathLedsService;I)V

    goto :goto_0
.end method

.method public turnOffLeds()V
    .locals 2

    .prologue
    .line 110
    const-string v0, "chenhua"

    const-string v1, "turnOffLeds "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    iget-object v0, p0, Lcom/android/server/BreathLedsService$BinderService;->this$0:Lcom/android/server/BreathLedsService;

    const/4 v1, 0x0

    # invokes: Lcom/android/server/BreathLedsService;->set_brightness_native(I)V
    invoke-static {v0, v1}, Lcom/android/server/BreathLedsService;->access$300(Lcom/android/server/BreathLedsService;I)V

    .line 112
    return-void
.end method

.method public turnOnLeds(Ljava/lang/String;)V
    .locals 3
    .param p1, "color"    # Ljava/lang/String;

    .prologue
    .line 90
    const-string v0, "chenxia"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "turnOnLeds:defaultBrihtness = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/BreathLedsService$BinderService;->this$0:Lcom/android/server/BreathLedsService;

    iget v2, v2, Lcom/android/server/BreathLedsService;->defaultBrihtness:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    const-string v0, "chenhua"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "turnOnLeds "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    const-string v0, "Red"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 94
    iget-object v0, p0, Lcom/android/server/BreathLedsService$BinderService;->this$0:Lcom/android/server/BreathLedsService;

    const/4 v1, 0x1

    # invokes: Lcom/android/server/BreathLedsService;->set_brightness_native(I)V
    invoke-static {v0, v1}, Lcom/android/server/BreathLedsService;->access$300(Lcom/android/server/BreathLedsService;I)V

    .line 106
    :cond_0
    :goto_0
    return-void

    .line 95
    :cond_1
    const-string v0, "Green"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 97
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/android/server/BreathLedsService$BinderService;->this$0:Lcom/android/server/BreathLedsService;

    iget v1, v1, Lcom/android/server/BreathLedsService;->defaultBrihtness:I

    invoke-virtual {p0, v0, v1}, Lcom/android/server/BreathLedsService$BinderService;->setLedsBrightness(II)V

    goto :goto_0

    .line 99
    :cond_2
    const-string v0, "BreathRed"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 100
    iget-object v0, p0, Lcom/android/server/BreathLedsService$BinderService;->this$0:Lcom/android/server/BreathLedsService;

    const/4 v1, 0x3

    # invokes: Lcom/android/server/BreathLedsService;->set_brightness_native(I)V
    invoke-static {v0, v1}, Lcom/android/server/BreathLedsService;->access$300(Lcom/android/server/BreathLedsService;I)V

    goto :goto_0

    .line 101
    :cond_3
    const-string v0, "BreathBlue"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 102
    const/4 v0, 0x5

    iget-object v1, p0, Lcom/android/server/BreathLedsService$BinderService;->this$0:Lcom/android/server/BreathLedsService;

    iget v1, v1, Lcom/android/server/BreathLedsService;->defaultBrihtness:I

    invoke-virtual {p0, v0, v1}, Lcom/android/server/BreathLedsService$BinderService;->setLedsBrightness(II)V

    goto :goto_0
.end method
