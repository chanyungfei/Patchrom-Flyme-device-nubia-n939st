.class public final Landroid/util/PowerMoConfig;
.super Ljava/lang/Object;
.source "PowerMoConfig.java"


# static fields
.field public static FEATURE:Ljava/lang/String;

.field public static WITHOUT_ALL:Z

.field public static WITHOUT_FLOATING:Z

.field public static WITHOUT_REMOTE_DISPLAY:Z

.field public static WITHOUT_SHOPM:Z

.field public static WITHOUT_SMART_AUDIO:Z

.field public static WITHOUT_SMART_CONFIGURATION:Z

.field public static WITHOUT_SMART_CONTENT:Z

.field public static WITHOUT_SMART_DISPLAY:Z

.field public static WITHOUT_SMART_INPUT:Z

.field public static WITHOUT_SMART_SENSOR:Z


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 26
    const-string v0, ""

    sput-object v0, Landroid/util/PowerMoConfig;->FEATURE:Ljava/lang/String;

    .line 30
    sget-object v0, Landroid/util/PowerMoConfig;->FEATURE:Ljava/lang/String;

    const-string v3, "all"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    sput-boolean v0, Landroid/util/PowerMoConfig;->WITHOUT_ALL:Z

    .line 35
    sget-boolean v0, Landroid/util/PowerMoConfig;->WITHOUT_ALL:Z

    if-nez v0, :cond_0

    sget-object v0, Landroid/util/PowerMoConfig;->FEATURE:Ljava/lang/String;

    const-string/jumbo v3, "remote-display"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_a

    :cond_0
    move v0, v2

    :goto_0
    sput-boolean v0, Landroid/util/PowerMoConfig;->WITHOUT_REMOTE_DISPLAY:Z

    .line 40
    sget-boolean v0, Landroid/util/PowerMoConfig;->WITHOUT_ALL:Z

    if-nez v0, :cond_1

    sget-object v0, Landroid/util/PowerMoConfig;->FEATURE:Ljava/lang/String;

    const-string/jumbo v3, "smart-display"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_b

    :cond_1
    move v0, v2

    :goto_1
    sput-boolean v0, Landroid/util/PowerMoConfig;->WITHOUT_SMART_DISPLAY:Z

    .line 45
    sget-boolean v0, Landroid/util/PowerMoConfig;->WITHOUT_ALL:Z

    if-nez v0, :cond_2

    sget-object v0, Landroid/util/PowerMoConfig;->FEATURE:Ljava/lang/String;

    const-string/jumbo v3, "smart-audio"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_c

    :cond_2
    move v0, v2

    :goto_2
    sput-boolean v0, Landroid/util/PowerMoConfig;->WITHOUT_SMART_AUDIO:Z

    .line 50
    sget-boolean v0, Landroid/util/PowerMoConfig;->WITHOUT_ALL:Z

    if-nez v0, :cond_3

    sget-object v0, Landroid/util/PowerMoConfig;->FEATURE:Ljava/lang/String;

    const-string/jumbo v3, "smart-sensor"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_d

    :cond_3
    move v0, v2

    :goto_3
    sput-boolean v0, Landroid/util/PowerMoConfig;->WITHOUT_SMART_SENSOR:Z

    .line 55
    sget-boolean v0, Landroid/util/PowerMoConfig;->WITHOUT_ALL:Z

    if-nez v0, :cond_4

    sget-object v0, Landroid/util/PowerMoConfig;->FEATURE:Ljava/lang/String;

    const-string/jumbo v3, "smart-input"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_e

    :cond_4
    move v0, v2

    :goto_4
    sput-boolean v0, Landroid/util/PowerMoConfig;->WITHOUT_SMART_INPUT:Z

    .line 60
    sget-boolean v0, Landroid/util/PowerMoConfig;->WITHOUT_ALL:Z

    if-nez v0, :cond_5

    sget-object v0, Landroid/util/PowerMoConfig;->FEATURE:Ljava/lang/String;

    const-string/jumbo v3, "smart-configuration"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_f

    :cond_5
    move v0, v2

    :goto_5
    sput-boolean v0, Landroid/util/PowerMoConfig;->WITHOUT_SMART_CONFIGURATION:Z

    .line 65
    sget-boolean v0, Landroid/util/PowerMoConfig;->WITHOUT_ALL:Z

    if-nez v0, :cond_6

    sget-object v0, Landroid/util/PowerMoConfig;->FEATURE:Ljava/lang/String;

    const-string/jumbo v3, "smart-content"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_10

    :cond_6
    move v0, v2

    :goto_6
    sput-boolean v0, Landroid/util/PowerMoConfig;->WITHOUT_SMART_CONTENT:Z

    .line 70
    sget-boolean v0, Landroid/util/PowerMoConfig;->WITHOUT_ALL:Z

    if-nez v0, :cond_7

    sget-boolean v0, Landroid/util/PowerMoConfig;->WITHOUT_SMART_DISPLAY:Z

    if-nez v0, :cond_7

    sget-boolean v0, Landroid/util/PowerMoConfig;->WITHOUT_SMART_INPUT:Z

    if-nez v0, :cond_7

    sget-object v0, Landroid/util/PowerMoConfig;->FEATURE:Ljava/lang/String;

    const-string/jumbo v3, "shopm"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_11

    :cond_7
    move v0, v2

    :goto_7
    sput-boolean v0, Landroid/util/PowerMoConfig;->WITHOUT_SHOPM:Z

    .line 75
    sget-boolean v0, Landroid/util/PowerMoConfig;->WITHOUT_ALL:Z

    if-nez v0, :cond_8

    sget-object v0, Landroid/util/PowerMoConfig;->FEATURE:Ljava/lang/String;

    const-string v3, "floating"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_9

    :cond_8
    move v1, v2

    :cond_9
    sput-boolean v1, Landroid/util/PowerMoConfig;->WITHOUT_FLOATING:Z

    return-void

    :cond_a
    move v0, v1

    .line 35
    goto/16 :goto_0

    :cond_b
    move v0, v1

    .line 40
    goto/16 :goto_1

    :cond_c
    move v0, v1

    .line 45
    goto :goto_2

    :cond_d
    move v0, v1

    .line 50
    goto :goto_3

    :cond_e
    move v0, v1

    .line 55
    goto :goto_4

    :cond_f
    move v0, v1

    .line 60
    goto :goto_5

    :cond_10
    move v0, v1

    .line 65
    goto :goto_6

    :cond_11
    move v0, v1

    .line 70
    goto :goto_7
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static loadConfig()V
    .locals 4

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 78
    const-string/jumbo v0, "persist.powermo.disfeature"

    const-string v3, "all"

    invoke-static {v0, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/util/PowerMoConfig;->FEATURE:Ljava/lang/String;

    .line 79
    sget-object v0, Landroid/util/PowerMoConfig;->FEATURE:Ljava/lang/String;

    const-string v3, "all"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    sput-boolean v0, Landroid/util/PowerMoConfig;->WITHOUT_ALL:Z

    .line 80
    sget-boolean v0, Landroid/util/PowerMoConfig;->WITHOUT_ALL:Z

    if-nez v0, :cond_0

    sget-object v0, Landroid/util/PowerMoConfig;->FEATURE:Ljava/lang/String;

    const-string/jumbo v3, "smart-display"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_a

    :cond_0
    move v0, v2

    :goto_0
    sput-boolean v0, Landroid/util/PowerMoConfig;->WITHOUT_SMART_DISPLAY:Z

    .line 81
    sget-boolean v0, Landroid/util/PowerMoConfig;->WITHOUT_ALL:Z

    if-nez v0, :cond_1

    sget-object v0, Landroid/util/PowerMoConfig;->FEATURE:Ljava/lang/String;

    const-string/jumbo v3, "smart-audio"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_b

    :cond_1
    move v0, v2

    :goto_1
    sput-boolean v0, Landroid/util/PowerMoConfig;->WITHOUT_SMART_AUDIO:Z

    .line 82
    sget-boolean v0, Landroid/util/PowerMoConfig;->WITHOUT_ALL:Z

    if-nez v0, :cond_2

    sget-object v0, Landroid/util/PowerMoConfig;->FEATURE:Ljava/lang/String;

    const-string/jumbo v3, "smart-sensor"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_c

    :cond_2
    move v0, v2

    :goto_2
    sput-boolean v0, Landroid/util/PowerMoConfig;->WITHOUT_SMART_SENSOR:Z

    .line 83
    sget-boolean v0, Landroid/util/PowerMoConfig;->WITHOUT_ALL:Z

    if-nez v0, :cond_3

    sget-object v0, Landroid/util/PowerMoConfig;->FEATURE:Ljava/lang/String;

    const-string/jumbo v3, "smart-input"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_d

    :cond_3
    move v0, v2

    :goto_3
    sput-boolean v0, Landroid/util/PowerMoConfig;->WITHOUT_SMART_INPUT:Z

    .line 84
    sget-boolean v0, Landroid/util/PowerMoConfig;->WITHOUT_ALL:Z

    if-nez v0, :cond_4

    sget-object v0, Landroid/util/PowerMoConfig;->FEATURE:Ljava/lang/String;

    const-string/jumbo v3, "smart-configuration"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_e

    :cond_4
    move v0, v2

    :goto_4
    sput-boolean v0, Landroid/util/PowerMoConfig;->WITHOUT_SMART_CONFIGURATION:Z

    .line 85
    sget-boolean v0, Landroid/util/PowerMoConfig;->WITHOUT_ALL:Z

    if-nez v0, :cond_5

    sget-boolean v0, Landroid/util/PowerMoConfig;->WITHOUT_SMART_DISPLAY:Z

    if-nez v0, :cond_5

    sget-boolean v0, Landroid/util/PowerMoConfig;->WITHOUT_SMART_INPUT:Z

    if-nez v0, :cond_5

    sget-object v0, Landroid/util/PowerMoConfig;->FEATURE:Ljava/lang/String;

    const-string/jumbo v3, "shopm"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_f

    :cond_5
    move v0, v2

    :goto_5
    sput-boolean v0, Landroid/util/PowerMoConfig;->WITHOUT_SHOPM:Z

    .line 86
    sget-boolean v0, Landroid/util/PowerMoConfig;->WITHOUT_ALL:Z

    if-nez v0, :cond_6

    sget-object v0, Landroid/util/PowerMoConfig;->FEATURE:Ljava/lang/String;

    const-string v3, "floating"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_10

    :cond_6
    move v0, v2

    :goto_6
    sput-boolean v0, Landroid/util/PowerMoConfig;->WITHOUT_FLOATING:Z

    .line 87
    sget-boolean v0, Landroid/util/PowerMoConfig;->WITHOUT_ALL:Z

    if-nez v0, :cond_7

    sget-object v0, Landroid/util/PowerMoConfig;->FEATURE:Ljava/lang/String;

    const-string/jumbo v3, "remote-display"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_11

    :cond_7
    move v0, v2

    :goto_7
    sput-boolean v0, Landroid/util/PowerMoConfig;->WITHOUT_REMOTE_DISPLAY:Z

    .line 88
    sget-boolean v0, Landroid/util/PowerMoConfig;->WITHOUT_ALL:Z

    if-nez v0, :cond_8

    sget-object v0, Landroid/util/PowerMoConfig;->FEATURE:Ljava/lang/String;

    const-string/jumbo v3, "smart-content"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_9

    :cond_8
    move v1, v2

    :cond_9
    sput-boolean v1, Landroid/util/PowerMoConfig;->WITHOUT_SMART_CONTENT:Z

    .line 89
    return-void

    :cond_a
    move v0, v1

    .line 80
    goto/16 :goto_0

    :cond_b
    move v0, v1

    .line 81
    goto/16 :goto_1

    :cond_c
    move v0, v1

    .line 82
    goto :goto_2

    :cond_d
    move v0, v1

    .line 83
    goto :goto_3

    :cond_e
    move v0, v1

    .line 84
    goto :goto_4

    :cond_f
    move v0, v1

    .line 85
    goto :goto_5

    :cond_10
    move v0, v1

    .line 86
    goto :goto_6

    :cond_11
    move v0, v1

    .line 87
    goto :goto_7
.end method
